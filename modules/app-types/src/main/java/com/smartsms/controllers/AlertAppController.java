package com.smartsms.controllers;

import com.smartsms.beans.AlertApplication;
import com.smartsms.repo.config.ApplicationTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.UUID;

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
    public String redirect() {
        return "AlertAppCreate";

    }

    @RequestMapping(value = "/AlertAppCreate", method = RequestMethod.POST)
    public String submitAlertAppCreate(AlertApplication application) {
        this.alertApplication = application;
        return "redirect:/AlertAppConfirm";

    }

    @RequestMapping(value = "/AlertAppConfirm", method = RequestMethod.GET)
    public String redirectConfirm(Model model) {
        model.addAttribute("alertObj", alertApplication);
        return "AlertAppConfirm";

    }

    @RequestMapping(value = "/AlertAppConfirm", method = RequestMethod.POST)
    public String submit(AlertApplication application) {
        application.setAppId(UUID.randomUUID().toString());
        applicationTypeRepository.saveApplication(application);
        return "redirect:/AlertAppSuccess";

    }

    @RequestMapping(value = "/AlertAppSuccess", method = RequestMethod.GET)
    public String redirectSuccess() {
        return "AlertAppSuccess";

    }

    @RequestMapping(value = "/AlertHelp", method = RequestMethod.GET)
    public String redirectHelp() {
        return "AlertHelp";

    }

    @RequestMapping(value = "/AlertUse", method = RequestMethod.GET)
    public String redirectAlertUse() {
        return "AlertUse";

    }


}
