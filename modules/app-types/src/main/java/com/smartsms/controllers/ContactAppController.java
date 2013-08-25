package com.smartsms.controllers;

import com.smartsms.beans.ContactApplication;
import com.smartsms.beans.Keyword;
import com.smartsms.beans.util.ScheduledType;
import com.smartsms.repo.config.ApplicationTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ContactAppController {

    @Autowired
    private ApplicationTypeRepository applicationTypeRepository;

    private ContactApplication ContactApplication;

    @RequestMapping(value = "/ContactAppCreate", method = RequestMethod.GET)
    public String redirect(){
        return "ContactAppCreate";

    }
    @RequestMapping(value = "/ContactAppCreate", method = RequestMethod.POST)
    public String submitContactAppCreate(ContactApplication application, @RequestParam("keywordString") String keywordStr,
                                         @RequestParam("scheduledTypeStr") String scheduledTypeStr){
        this.ContactApplication = convertToContactApplication(application, keywordStr, scheduledTypeStr);
        applicationTypeRepository.saveApplication(ContactApplication);
        return "ContactAppSuccess";
    }

    private ContactApplication convertToContactApplication(ContactApplication application,String keywordStr,
                                                           String scheduledTypeStr) {
        ContactApplication ContactApplication = application;
        Keyword keyword = new Keyword();
        keyword.setShortCode(keywordStr);
        ContactApplication.setKeyword(keyword);
        return ContactApplication;
    }

    @RequestMapping(value = "/ContactAppConfirm", method = RequestMethod.GET)
    public String redirectConfirm(){
        return "ContactAppConfirm";

    }

    @RequestMapping(value = "/ContactAppSuccess", method = RequestMethod.POST)
    public String submit(ContactApplication application){
        return "ContactAppSuccess";

    }

    @RequestMapping(value = "/ContactAppSuccess", method = RequestMethod.GET)
    public String redirectSuccess(){
        return "ContactAppSuccess";

    }

    @RequestMapping(value = "/ContactHelp", method = RequestMethod.GET)
    public String redirectHelp(){
        return "ContactHelp";

    }
    @RequestMapping(value = "/ContactAppView", method = RequestMethod.GET)
    public String redirectView(){
        return "ContactAppView";

    }


}
