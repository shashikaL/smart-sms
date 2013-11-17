package com.smartsms.controllers;

import com.smartsms.beans.*;
import com.smartsms.beans.util.ScheduledType;
import com.smartsms.repo.config.ApplicationTypeRepository;
import com.smartsms.repo.impl.AdminRepositoryImpl;
import com.smartsms.security.SecurityUtil;
import com.smartsms.util.KeywordGenerator;
import com.smartsms.util.KeywordSeperator;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;


@Controller
public class ContactAppController {

    @Autowired
    private ApplicationTypeRepository applicationTypeRepository;
    @Autowired
    private AdminRepositoryImpl adminRepository;
    @Autowired
    private KeywordGenerator keywordGenerator;
    private ContactApplication ContactApplication;

    @Value("${simulator.url}")
    private String simulatorUrl;

    @Autowired
    private RestTemplate restTemplate;

    @RequestMapping(value = "/ContactAppCreate", method = RequestMethod.GET)
    public String redirect(Model model) {
        model.addAttribute("keywordList", keywordGenerator.GetUniqueKeywords());
        return "ContactAppCreate";

    }

    @RequestMapping(value = "/ContactAppCreate", method = RequestMethod.POST)
    public String submitContactAppCreate(ContactApplication application, @ModelAttribute("keywordStr") String s) {
        application.setKeyword(KeywordSeperator.createKeyword(s));
        this.ContactApplication = application;
        ContactApplication.setUserID(SecurityUtil.getUserLoggedInname());
        applicationTypeRepository.saveApplication(ContactApplication);
        return "ContactAppSuccess";
    }

    @RequestMapping(value = "/ContactAppConfirm", method = RequestMethod.GET)
    public String redirectConfirm() {
        return "ContactAppConfirm";

    }

    @RequestMapping(value = "/ContactAppSuccess", method = RequestMethod.POST)
    public String submit(ContactApplication application) {
        return "ContactAppSuccess";

    }

    @RequestMapping(value = "/ContactAppSuccess", method = RequestMethod.GET)
    public String redirectSuccess() {
        return "ContactAppSuccess";

    }

    @RequestMapping(value = "/ContactHelp", method = RequestMethod.GET)
    public String redirectHelp() {
        return "ContactHelp";

    }

    @RequestMapping(value = "/ContactAppView", method = RequestMethod.GET)
    public String redirectView(@RequestParam String appId, Model model) {
        ContactApplication application = applicationTypeRepository.findContactApplicationById(appId);
        model.addAttribute("messages", adminRepository.findContactAppMessages());
        model.addAttribute("application", application);
        return "ContactAppView";

    }

    @RequestMapping(value = "/ContactAppView", method = RequestMethod.POST)
    public String submitView(@RequestParam String messageArea) {
        restTemplate.getForObject(simulatorUrl, String.class, messageArea);
        return "redirect:/MyApplications";
    }


    @RequestMapping(value = "/contactAppUse", method = RequestMethod.POST)
    @ResponseBody
    public Response processMessage(@RequestBody ContactAppMessage contactAppMessage) {
        adminRepository.saveContactMessage(contactAppMessage);
        Response response = new Response();
        response.setStatusCode("200");
        response.setStatusMessage("Success");
        return response;

    }

    @RequestMapping(value = "/bulk/contactAppUse", method = RequestMethod.POST)
    @ResponseBody
    public Response processBulkMessage(@RequestBody ContactMessageList contactAppMessageList) {
        ContactApplication application = applicationTypeRepository.findContactApplicationByShortCode(contactAppMessageList.getShortCode());
        if (application == null) {
            Response response = new Response();
            response.setStatusCode("404");
            response.setStatusMessage("Cannot find requested application");
            return response;
        }

        Response response = new Response();
        response.setStatusCode("200");
        response.setStatusMessage("Success");
        return response;
    }


}
