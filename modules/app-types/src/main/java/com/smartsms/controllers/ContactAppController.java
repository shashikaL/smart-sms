package com.smartsms.controllers;

import com.smartsms.beans.*;
import com.smartsms.beans.util.ScheduledType;
import com.smartsms.repo.config.ApplicationTypeRepository;
import com.smartsms.repo.impl.AdminRepositoryImpl;
import com.smartsms.security.SecurityUtil;
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
    public String redirect() {
        return "ContactAppCreate";

    }

    @RequestMapping(value = "/ContactAppCreate", method = RequestMethod.POST)
    public String submitContactAppCreate(ContactApplication application) {
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
    public String redirectView() {
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

//    @RequestMapping(value = "/bulk/contactAppUse", method = RequestMethod.POST)
//    @ResponseBody
//    public Response processBulkMessage(@RequestBody ContactMessageList contactAppMessageList) {
//
//        //find application by short code - findContactApplicationByShortCode(sho)
//        // create ContactResponse based on returned answer
//        //save contact response - saveContactResponse()
//        Response response = new Response();
//        response.setStatusCode("200");
//        response.setStatusMessage("Success");
//        return response;
//    }


}
