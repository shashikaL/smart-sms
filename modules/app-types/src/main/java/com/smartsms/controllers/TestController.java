package com.smartsms.controllers;

import com.smartsms.beans.VotingApplication;
import com.smartsms.repo.config.ApplicationTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created with IntelliJ IDEA.
 * User: Shashi
 * Date: 6/1/13
 * Time: 4:06 PM
 * To change this template use File | Settings | File Templates.
 */
@Controller
public class TestController {

    @Autowired
    private ApplicationTypeRepository applicationTypeRepository;

    @RequestMapping(method = RequestMethod.GET, value = "/test")
    public String redirect(){
        return "Test";
    }

//    @RequestMapping(method = RequestMethod.POST, value = "/test")
//    public String submit1(@RequestParam("userName") String userName,@RequestParam("password") String password){
//        System.out.println("username ===> " + userName);
//        System.out.println("password ===> " + password);
//        return "Test";
//    }

    @RequestMapping(method = RequestMethod.POST, value = "/test")
    public String submit1(User user){
        System.out.println("username ===> " + user.getUsername());
        System.out.println("password ===> " + user.getPassword());
        return "Test";
    }

//    @RequestMapping(method = RequestMethod.POST, value = "/test11")
//    public String submit2(VotingApplication application){
//        applicationTypeRepository.saveApplication(application);
//        return "Test";
//    }





}
