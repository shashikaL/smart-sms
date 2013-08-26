package com.smartsms.controllers;

import com.smartsms.beans.FilterRejectedMessage;
import com.smartsms.repo.config.ApplicationTypeRepository;
import com.smartsms.repo.impl.AdminRepositoryImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: snej
 * Date: 6/8/13
 * Time: 4:00 PM
 * To change this template use File | Settings | File Templates.
 */

@Controller
public class AdminPageController {

    @Autowired
    private AdminRepositoryImpl adminRepository;


    @RequestMapping(value = "/AdminPage", method = RequestMethod.GET)
    public String redirect(Model model){

        List<FilterRejectedMessage> allFilterRejected = adminRepository.findAllFilterRejectedMessage();
        model.addAttribute("filterd" , allFilterRejected);
        model.addAttribute("contactApps", adminRepository.findContactAppMessages());


        return "AdminPage";

    }
}
