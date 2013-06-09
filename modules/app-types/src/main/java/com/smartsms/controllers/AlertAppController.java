package com.smartsms.controllers;

import com.smartsms.beans.Keyword;
import com.smartsms.beans.AlertApplication;
import com.smartsms.repo.config.ApplicationTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created with IntelliJ IDEA.
 * User: snej
 * Date: 6/8/13
 * Time: 3:30 PM
 * To change this template use File | Settings | File Templates.
 */

@Controller
public class AlertAppController {

    @Autowired
    private ApplicationTypeRepository applicationTypeRepository;

    private AlertApplication alertApplication;

    @RequestMapping(value = "/AlertAppCreate", method = RequestMethod.GET)
    public String redirect(){
        return "AlertAppCreate";

    }

    @RequestMapping(value = "/AlertAppCreate", method = RequestMethod.POST)
    public String submitAlertAppCreate(AlertApplication application, @RequestParam("keywordString") String keywordStr){
        this.alertApplication = convertToAlertApplication(application,keywordStr);
        applicationTypeRepository.saveApplication(alertApplication);
        return "AlertAppSuccess";

    }

    private AlertApplication convertToAlertApplication(AlertApplication application,String keywordStr) {
        AlertApplication alertApplication = application;
        Keyword keyword = new Keyword();
        keyword.setShortCode(keywordStr);
        alertApplication.setKeyword(keyword);
        return alertApplication;
    }

    @RequestMapping(value = "/AlertAppConfirm", method = RequestMethod.GET)
    public String redirectConfirm(){
        return "AlertAppConfirm";

    }

    @RequestMapping(value = "/AlertAppConfirm", method = RequestMethod.POST)
    public String submit(AlertApplication application){
        return "AlertAppSuccess";

    }

    @RequestMapping(value = "/AlertAppSuccess", method = RequestMethod.GET)
    public String redirectSuccess(){
        return "AlertAppSuccess";

    }

    @RequestMapping(value = "/AlertHelp", method = RequestMethod.GET)
    public String redirectHelp(){
        return "AlertHelp";

    }


}
