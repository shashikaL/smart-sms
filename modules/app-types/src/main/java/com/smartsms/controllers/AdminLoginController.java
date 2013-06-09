package com.smartsms.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created with IntelliJ IDEA.
 * User: snej
 * Date: 6/8/13
 * Time: 3:48 PM
 * To change this template use File | Settings | File Templates.
 */

@Controller
public class AdminLoginController {
    @RequestMapping(value = "/AdminLogin", method = RequestMethod.GET)
    public String redirect(){
        return "AdminLogin";

    }

}
