package com.smartsms.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    @RequestMapping(method = RequestMethod.GET, value = "/Home")
    public String redirect(){
        return "Home";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/AppTypeSelection")
    public String redirectAppSelect(){
        return "AppTypeSelection";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/MyProfile")
    public String redirectMyProfile(){
        return "MyProfile";
    }
    @RequestMapping(method = RequestMethod.GET, value = "/MySettings")
    public String redirectMySettings(){
        return "MyProfile";
    }


}
