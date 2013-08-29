package com.smartsms.controllers;

import com.smartsms.beans.AlertApplication;
import com.smartsms.beans.FilterMessage;
import com.smartsms.beans.Response;
import com.smartsms.repo.config.ApplicationTypeRepository;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

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
    private RestTemplate restTemplate;

    @Autowired
    private ApplicationTypeRepository applicationTypeRepository;

    private AlertApplication alertApplication;

    @RequestMapping(value = "/AlertAppCreate", method = RequestMethod.GET)
    public String redirect(@RequestParam(value = "username", required = false) String username, Model model) {
        if(StringUtils.isEmpty(username)){
            model.addAttribute("username","user");
        } else {
            model.addAttribute("username",username);
        }
        return "AlertAppCreate";

    }

    @RequestMapping(value = "/AlertAppCreate", method = RequestMethod.POST)
    public String submitAlertAppCreate(AlertApplication application, @RequestParam(value = "username", required = false) String username, Model model) {
        this.alertApplication = application;
        if(StringUtils.isEmpty(username)){
            model.addAttribute("username","user");
        } else {
            model.addAttribute("username",username);
        }
        return "redirect:/AlertAppConfirm";

    }

    @RequestMapping(value = "/AlertAppConfirm", method = RequestMethod.GET)
    public String redirectConfirm(@RequestParam(value = "username", required = false) String username, Model model) {
        if(StringUtils.isEmpty(username)){
            model.addAttribute("username","user");
        } else {
            model.addAttribute("username",username);
        }
        model.addAttribute("alertObj", alertApplication);
        return "AlertAppConfirm";

    }

    @RequestMapping(value = "/AlertAppConfirm", method = RequestMethod.POST)
    public String submit(AlertApplication application, @RequestParam(value = "username", required = false) String username,  Model model) {
        if(StringUtils.isEmpty(username)){
            model.addAttribute("username","user");
        } else {
            model.addAttribute("username",username);
        }
        application.setAppId(UUID.randomUUID().toString());
        application.setUserID(username);
        applicationTypeRepository.saveApplication(application);
        return "redirect:/AlertAppSuccess";

    }

    @RequestMapping(value = "/AlertAppSuccess", method = RequestMethod.GET)
    public String redirectSuccess(@RequestParam(value = "username", required = false) String username, Model model) {
        if(StringUtils.isEmpty(username)){
            model.addAttribute("username","user");
        } else {
            model.addAttribute("username",username);
        }
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

    @RequestMapping(value = "/AlertUse", method = RequestMethod.POST)
    public String submitAlertUse(@RequestParam("appMessage") String appMessage) {
        FilterMessage filterMessage = new FilterMessage();
        filterMessage.setMessage(appMessage);
        try {
            String response = restTemplate.postForObject("http://localhost:8080/app-ui/filter", filterMessage, String.class);

        }  catch (Throwable e){

        }
        return "AlertUse";

    }


}
