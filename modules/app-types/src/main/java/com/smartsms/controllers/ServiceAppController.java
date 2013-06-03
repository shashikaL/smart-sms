package com.smartsms.controllers;

import com.smartsms.beans.ServiceApplication;
import com.smartsms.repo.config.ApplicationTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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


    @RequestMapping(value = "/ServiceApp_step1", method = RequestMethod.GET)
    public String redirect(){
        return "ServiceApp_step1";

    }


    @RequestMapping(value = "/ServiceAppConfirm", method = RequestMethod.GET)
    public String redirectConfirm(){
        return "ServiceAppConfirm";

    }

    @RequestMapping(value = "/ServiceAppSuccess", method = RequestMethod.GET)
    public String redirectSuccess(){
        return "ServiceAppSuccess";

    }

    @RequestMapping(value = "/ServiceHelp", method = RequestMethod.GET)
    public String redirectHelp(){
        return "ServiceHelp";

    }

    @RequestMapping(value = "/MyApplications", method = RequestMethod.GET)
    public String redirectMyApplications(){
        return "MyApplications";

    }
}
