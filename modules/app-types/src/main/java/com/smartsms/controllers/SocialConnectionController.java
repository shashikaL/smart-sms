package com.smartsms.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @author shashi
 */
@Controller
public class SocialConnectionController {

    @RequestMapping(method = RequestMethod.GET, value = "/social-connections/login")
    public String findLoginUrl(@RequestParam("code") String code){
        System.out.println("====================>");
        System.out.println(code);

        return "Home";
    }

}
