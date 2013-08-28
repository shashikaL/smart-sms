package com.smartsms.controllers;

import com.smartsms.beans.AbstractApplicationType;
import com.smartsms.beans.ServiceApplication;
import com.smartsms.repo.config.ApplicationTypeRepository;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;
import java.util.UUID;

/**
 * Created with IntelliJ IDEA.
 * User: Shashi
 * Date: 6/3/13
 * Time: 11:21 AM
 * To change this template use File | Settings | File Templates.
 */

@Controller
@SessionAttributes("username")
public class ServiceAppController {

    @Autowired
    private ApplicationTypeRepository applicationTypeRepository;

    private ServiceApplication serviceApplication;


    @RequestMapping(value = "/ServiceApp_step1", method = RequestMethod.GET)
    public String redirect(@RequestParam(value = "username", required = false) String username, Model model) {
        if (StringUtils.isEmpty(username)) {
            model.addAttribute("username", "user");
        } else {
            model.addAttribute("username", username);
        }
        return "ServiceApp_step1";

    }

    @RequestMapping(value = "/ServiceApp_step1", method = RequestMethod.POST)
    public String submitServiceApp_step1(ServiceApplication application, @RequestParam(value = "username", required = false) String username, Model model) {
        if (StringUtils.isEmpty(username)) {
            model.addAttribute("username", "user");
        } else {
            model.addAttribute("username", username);
        }
        application.setUserID(username);
        this.serviceApplication = application;
        return "redirect:/ServiceAppConfirm";

    }

    @RequestMapping(value = "/ServiceAppConfirm", method = RequestMethod.GET)
    public String redirectConfirm(Model model,@RequestParam(value = "username", required = false) String username) {
        if (StringUtils.isEmpty(username)) {
            model.addAttribute("username", "user");
        } else {
            model.addAttribute("username", username);
        }
        model.addAttribute("ServiceObj", serviceApplication);
        return "ServiceAppConfirm";

    }

    @RequestMapping(value = "/ServiceAppConfirm", method = RequestMethod.POST)
    public String submit(ServiceApplication application,@RequestParam(value = "username", required = false) String username,Model model) {
        if (StringUtils.isEmpty(username)) {
            model.addAttribute("username", "user");
        } else {
            model.addAttribute("username", username);
        }
        serviceApplication.setAppId(UUID.randomUUID().toString());
        applicationTypeRepository.saveApplication(serviceApplication);
        return "redirect:/ServiceAppSuccess";

    }

    @RequestMapping(value = "/ServiceAppSuccess", method = RequestMethod.GET)
    public String redirectSuccess(Model model,@RequestParam(value = "username", required = false) String username) {
        if (StringUtils.isEmpty(username)) {
            model.addAttribute("username", "user");
        } else {
            model.addAttribute("username", username);
        }
        return "ServiceAppSuccess";

    }

    @RequestMapping(value = "/ServiceHelp", method = RequestMethod.GET)
    public String redirectHelp(Model model,@RequestParam(value = "username", required = false) String username) {
        if (StringUtils.isEmpty(username)) {
            model.addAttribute("username", "user");
        } else {
            model.addAttribute("username", username);
        }
        return "ServiceHelp";

    }

    @RequestMapping(value = "/MyApplications", method = RequestMethod.GET)
    public String redirectMyApplications(@RequestParam(value = "username", required = false) String username, Model model) {
        if (StringUtils.isEmpty(username)) {
            model.addAttribute("username", "user");
        } else {
            model.addAttribute("username", username);
        }
        model.addAttribute("serviceApps", applicationTypeRepository.findAllServiceApplicationByUsername(username));
        model.addAttribute("alertApps", applicationTypeRepository.findAllAlertApplicationByUsername(username));
        model.addAttribute("votingApps", applicationTypeRepository.findAllVotingApplicationByUsername(username));
        model.addAttribute("contactApps", applicationTypeRepository.findAllContactApplicationByUsername(username));
        return "MyApplications";

    }
}
