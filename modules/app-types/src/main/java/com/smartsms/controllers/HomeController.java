package com.smartsms.controllers;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    @RequestMapping(method = RequestMethod.GET, value = "/Home")
    public String redirect(@RequestParam(value = "username", required = false) String username, Model model){
        if(StringUtils.isEmpty(username)){
            model.addAttribute("username","user");
        } else {
            model.addAttribute("username",username);
        }

        return "Home";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/AppTypeSelection")
    public String redirectAppSelect(@RequestParam(value = "username", required = false) String username, Model model){
        if(StringUtils.isEmpty(username)){
            model.addAttribute("username","user");
        } else {
            model.addAttribute("username",username);
        }
        return "AppTypeSelection";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/MyProfile")
    public String redirectMyProfile(){
        return "MyProfile";
    }


}
