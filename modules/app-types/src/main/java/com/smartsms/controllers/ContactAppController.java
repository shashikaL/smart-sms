package com.smartsms.controllers;

import com.smartsms.beans.*;
import com.smartsms.beans.util.ScheduledType;
import com.smartsms.repo.config.ApplicationTypeRepository;
import com.smartsms.repo.impl.AdminRepositoryImpl;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class ContactAppController {

    @Autowired
    private ApplicationTypeRepository applicationTypeRepository;
    @Autowired
    private AdminRepositoryImpl adminRepository;

    private ContactApplication ContactApplication;

    @RequestMapping(value = "/ContactAppCreate", method = RequestMethod.GET)
    public String redirect(@RequestParam(value = "username", required = false) String username, Model model) {
        if(StringUtils.isEmpty(username)){
            model.addAttribute("username","user");
        } else {
            model.addAttribute("username",username);
        }
        return "ContactAppCreate";

    }

    @RequestMapping(value = "/ContactAppCreate", method = RequestMethod.POST)
    public String submitContactAppCreate(ContactApplication application,@RequestParam(value = "username", required = false) String username, Model model) {
        this.ContactApplication = application;
        ContactApplication.setUserID(username);
        applicationTypeRepository.saveApplication(ContactApplication);
        return "ContactAppSuccess";
    }

    @RequestMapping(value = "/ContactAppConfirm", method = RequestMethod.GET)
    public String redirectConfirm(@RequestParam(value = "username", required = false) String username, Model model) {
        if(StringUtils.isEmpty(username)){
            model.addAttribute("username","user");
        } else {
            model.addAttribute("username",username);
        }
        return "ContactAppConfirm";

    }

    @RequestMapping(value = "/ContactAppSuccess", method = RequestMethod.POST)
    public String submit(ContactApplication application) {
        return "ContactAppSuccess";

    }

    @RequestMapping(value = "/ContactAppSuccess", method = RequestMethod.GET)
    public String redirectSuccess(@RequestParam(value = "username", required = false) String username, Model model) {
        if(StringUtils.isEmpty(username)){
            model.addAttribute("username","user");
        } else {
            model.addAttribute("username",username);
        }
        return "ContactAppSuccess";

    }

    @RequestMapping(value = "/ContactHelp", method = RequestMethod.GET)
    public String redirectHelp(@RequestParam(value = "username", required = false) String username, Model model) {
        if(StringUtils.isEmpty(username)){
            model.addAttribute("username","user");
        } else {
            model.addAttribute("username",username);
        }
        return "ContactHelp";

    }

    @RequestMapping(value = "/ContactAppView", method = RequestMethod.GET)
    public String redirectView(@RequestParam(value = "username", required = false) String username, Model model) {
        if(StringUtils.isEmpty(username)){
            model.addAttribute("username","user");
        } else {
            model.addAttribute("username",username);
        }
        return "ContactAppView";

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

        //find application by short code - findContactApplicationByShortCode(sho)
        // create ContactResponse based on returned answer
        //save contact response - saveContactResponse()
        Response response = new Response();
        response.setStatusCode("200");
        response.setStatusMessage("Success");
        return response;
    }


}
