package com.smartsms.controllers;

import com.smartsms.repo.config.ApplicationTypeRepository;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

/**
 * @author rajith
 */
@Controller
public class KeywordController {

    @Autowired
    private ApplicationTypeRepository applicationTypeRepository;

    @RequestMapping(method = RequestMethod.GET, value = "/create-keyword")
    public String redirect(@RequestParam(value = "username", required = false) String username, Model model) {
        if (StringUtils.isEmpty(username)) {
            model.addAttribute("username", "user");
        } else {
            model.addAttribute("username", username);
        }
        model.addAttribute("shortCodes", findShortCodes());

        return "create-keyword";
    }

    private List<String> findShortCodes() {
        List<String> strings = new ArrayList<String>();
        strings.add("1234");
        strings.add("5678");
        return strings;
    }


}
