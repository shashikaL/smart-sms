package com.smartsms.controllers;

import com.smartsms.beans.ServiceApplication;
import com.smartsms.repo.config.ApplicationTypeRepository;
import com.smartsms.security.SecurityUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
    private ServiceApplication serviceApplication;

    @RequestMapping(value = "/ServiceApp_step1", method = RequestMethod.GET)
    public String redirect() {
        return "ServiceApp_step1";

    }

    @RequestMapping(value = "/ServiceApp_step1", method = RequestMethod.POST)
    public String submitServiceApp_step1(ServiceApplication application) {
        application.setUserID(SecurityUtil.getUserLoggedInname());
        this.serviceApplication = application;
        return "redirect:/ServiceAppConfirm";

    }

    @RequestMapping(value = "/ServiceAppConfirm", method = RequestMethod.GET)
    public String redirectConfirm(Model model) {
        model.addAttribute("ServiceObj", serviceApplication);
        return "ServiceAppConfirm";

    }

    @RequestMapping(value = "/ServiceAppConfirm", method = RequestMethod.POST)
    public String submit(ServiceApplication application) {
        serviceApplication.setAppId(UUID.randomUUID().toString());
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
    public String redirectServiceUse() {
        return "ServiceUse";

    }
}
