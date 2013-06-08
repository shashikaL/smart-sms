package com.smartsms.controllers;

import com.smartsms.beans.ContactApplication;
import com.smartsms.repo.config.ApplicationTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ContactAppController {

    @Autowired
    private ApplicationTypeRepository applicationTypeRepository;

    private ContactApplication contactApplication;

    @RequestMapping(value = "/ContactAppCreate", method = RequestMethod.GET)
    public String redirect(){
        return "ContactAppCreate";

    }

}
