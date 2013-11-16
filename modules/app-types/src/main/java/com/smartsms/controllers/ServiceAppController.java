package com.smartsms.controllers;

import com.smartsms.beans.*;
import com.smartsms.repo.SubscriberRepository;
import com.smartsms.repo.config.ApplicationTypeRepository;
import com.smartsms.security.SecurityUtil;
import com.smartsms.util.KeywordGenerator;
import com.smartsms.util.KeywordSeperator;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

/**
 * Created with IntelliJ IDEA.
 * User: Shashi
 * Date: 6/3/13
 * Time: 11:21 AM
 * To change this template use File | Settings | File Templates.
 */

@Controller
public class ServiceAppController {

    @Autowired
    private ApplicationTypeRepository applicationTypeRepository;
    @Autowired
    private KeywordGenerator keywordGenerator;
    private ServiceApplication serviceApplication;
    @Autowired
    private SubscriberRepository subscriberRepository;

    @RequestMapping(value = "/ServiceApp_step1", method = RequestMethod.GET)
    public String redirect(Model model) {
        model.addAttribute("keywordList",keywordGenerator.GetUniqueKeywords());
        return "ServiceApp_step1";

    }

    @RequestMapping(value = "/ServiceApp_step1", method = RequestMethod.POST)
    public String submitServiceApp_step1(ServiceApplication application, @ModelAttribute("keywordStr") String s) {
        application.setUserID(SecurityUtil.getUserLoggedInname());
        application.setKeyword(KeywordSeperator.createKeyword(s));
        this.serviceApplication = application;
        return "redirect:/ServiceAppConfirm";

    }

    @RequestMapping(value = "/ServiceAppConfirm", method = RequestMethod.GET)
    public String redirectConfirm(Model model) {
        model.addAttribute("ServiceObj", serviceApplication);
        return "ServiceAppConfirm";

    }

    @RequestMapping(value = "/ServiceAppConfirm", method = RequestMethod.POST)
    public String submit() {
        serviceApplication.setAppId(UUID.randomUUID().toString());
        serviceApplication.setUserID(SecurityUtil.getUserLoggedInname());
        applicationTypeRepository.saveApplication(serviceApplication);
        return "redirect:/ServiceAppSuccess";

    }

    @RequestMapping(value = "/ServiceAppSuccess", method = RequestMethod.GET)
    public String redirectSuccess() {
        return "ServiceAppSuccess";

    }

    @RequestMapping(value = "/ServiceHelp", method = RequestMethod.GET)
    public String redirectHelp() {
        return "ServiceHelp";

    }

    @RequestMapping(value = "/MyApplications", method = RequestMethod.GET)
    public String redirectMyApplications(Model model) {
        String username = SecurityUtil.getUserLoggedInname();
        model.addAttribute("serviceApps", applicationTypeRepository.findAllServiceApplicationByUsername(username));
        model.addAttribute("alertApps", applicationTypeRepository.findAllAlertApplicationByUsername(username));
        model.addAttribute("votingApps", applicationTypeRepository.findAllVotingApplicationByUsername(username));
        model.addAttribute("contactApps", applicationTypeRepository.findAllContactApplicationByUsername(username));
        return "MyApplications";

    }

    @RequestMapping(value = "/ServiceUse", method = RequestMethod.GET)
    public String redirectServiceUse(@RequestParam("appId") String appId,Model model) {
        ServiceApplication serviceApplicationById = applicationTypeRepository.findServiceApplicationById(appId);
        String keywordString = serviceApplicationById.getKeyword().getName()+"-"+serviceApplicationById.getKeyword().getShortCode();
        model.addAttribute("keywordString",keywordString);
        return "ServiceUse";

    }

    @RequestMapping(value = "/ServiceUse", method = RequestMethod.POST)
    public String submitServiceUse(ServiceApplication application){
        ServiceApplication serviceApplicationById = applicationTypeRepository.findServiceApplicationById(application.getAppId());
        serviceApplicationById.setServiceMessage(application.getServiceMessage());
        applicationTypeRepository.saveApplication(serviceApplicationById);
        return "redirect:/MyApplications";

    }

    @RequestMapping(value = "/ServiceSubscription", method = RequestMethod.POST)
    @ResponseBody
    public Response serviceAppSubscription(@RequestBody ServiceAppMessage serviceAppMessage){
        Subscribe subscribe = new Subscribe();
        ServiceApplication application = applicationTypeRepository.findServiceApplicationByShortCode(serviceAppMessage.getShortCode());
        subscribe.setAppId(application.getAppId());
        subscribe.setSubscriberNumber(serviceAppMessage.getNumber());
        subscriberRepository.saveSubscriber(subscribe);

        Response response = new Response();
        response.setStatusCode("200");
        response.setStatusMessage("Success");
        return response;

    }
}
