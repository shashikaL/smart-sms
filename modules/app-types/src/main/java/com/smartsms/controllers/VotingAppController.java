package com.smartsms.controllers;

import com.smartsms.beans.Vote;
import com.smartsms.beans.VotingApplication;
import com.smartsms.repo.config.ApplicationTypeRepository;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created with IntelliJ IDEA.
 * User: Sony
 * Date: 03/06/13
 * Time: 9:40 PM
 * To change this template use File | Settings | File Templates.
 */
@Controller
public class VotingAppController {

    @Autowired
    private ApplicationTypeRepository applicationTypeRepository;

    @RequestMapping(value = "/VotingAppCreate", method = RequestMethod.GET)
    public String redirect(@RequestParam(value = "username", required = false) String username, Model model) {
        if (StringUtils.isEmpty(username)) {
            model.addAttribute("username", "user");
        } else {
            model.addAttribute("username", username);
        }
        return "VotingAppCreate";

    }

    @RequestMapping(value = "/VotingAppCreate", method = RequestMethod.POST)
    public String submit(VotingApplication application, @RequestParam("keywordStr") String keywordStr) {
        applicationTypeRepository.saveApplication(application);
        return "VotingAppSuccess";

    }

    @RequestMapping(value = "/VotingAppConfirm", method = RequestMethod.GET)
    public String redirectConfirm() {
        return "VotingAppConfirm";

    }

    @RequestMapping(value = "/VotingAppSuccess", method = RequestMethod.GET)
    public String redirectSuccess() {
        return "VotingAppSuccess";

    }

    @RequestMapping(value = "/VotingHelp", method = RequestMethod.GET)
    public String redirectHelp() {
        return "VotingHelp";

    }

    @RequestMapping(value = "/vote", method = RequestMethod.POST)
    public String submit(@RequestBody Vote vote) {
        String message = vote.getMessage();
        String[] strings = message.split(" ");  // SSS 1
        VotingApplication application = applicationTypeRepository.findVotingApplicationByShortCode(strings[0]);
        if (strings.length == 2) {
            applicationTypeRepository.incrementCandidateCount(strings[1], application.getAppId());

        }
        return "success";

    }

}
