package com.smartsms.controllers;

import com.smartsms.beans.Candidate;
import com.smartsms.beans.VotingApplication;
import com.smartsms.repo.config.ApplicationTypeRepository;
import com.smartsms.repo.impl.AdminRepositoryImpl;
import org.apache.commons.lang.StringUtils;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

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

    @Autowired
    private AdminRepositoryImpl adminRepository;

    private VotingApplication VotingApplication;

    @RequestMapping(value = "/VotingAppCreate", method = RequestMethod.GET)
    public String redirect(@RequestParam(value = "username", required = false) String username, Model model){
        if(StringUtils.isEmpty(username)){
            model.addAttribute("username","user");
        } else {
            model.addAttribute("username",username);
        }
        return "VotingAppCreate";

    }

    @RequestMapping(value = "/VotingAppCreate", method = RequestMethod.POST)
    public String submitVotingApplication(VotingApplication application, @RequestParam(value = "username", required = false) String username, Model model) {
        this.VotingApplication = application;
        if(StringUtils.isEmpty(username)){
            model.addAttribute("username","user");
        } else {
            model.addAttribute("username",username);
        }
        return "AddCandidate";

    }
    @RequestMapping(value = "/AddCandidate", method = RequestMethod.POST)
    public String AddCandidate(Candidate candidate)
    {
        List<Candidate> candidates = new ArrayList<Candidate>();
        candidates.add(candidate);
        this.VotingApplication.setCandidateList(candidates);
        return "redirect:/VotingAppConfirm";

    }

    @RequestMapping(value = "/VotingAppConfirm", method = RequestMethod.GET)
    public String redirectConfirm(Model model,@RequestParam(value = "username", required = false) String username) {
        if (StringUtils.isEmpty(username)) {
            model.addAttribute("username", "user");
        } else {
            model.addAttribute("username", username);
        }
        model.addAttribute("VotingObj",VotingApplication);
        return "VotingAppConfirm";

    }

    @RequestMapping(value = "/VotingAppConfirm", method = RequestMethod.POST)
    public String submitVote(VotingApplication application,@RequestParam(value = "username", required = false) String username,Model model) {
        if (StringUtils.isEmpty(username)) {
            model.addAttribute("username", "user");
        } else {
            model.addAttribute("username", username);
        }
        VotingApplication.setAppId(UUID.randomUUID().toString());
        applicationTypeRepository.saveApplication(VotingApplication);
        return "redirect:/VotingAppConfirm";

    }

    @RequestMapping(value = "/VotingAppSuccess", method = RequestMethod.GET)
    public String redirectSuccess(){
        return "VotingAppSuccess";

    }

    @RequestMapping(value = "/VotingHelp", method = RequestMethod.GET)
    public String redirectHelp(){
        return "VotingHelp";

    }

    @RequestMapping(value = "/votingView", method = RequestMethod.GET)
    public String votingView(){
        return "votingView";

    }

    @RequestMapping(value = "/addCandidate", method = RequestMethod.GET)
    public String addCandidateView(){
        return "addCandidate";

    }


}
