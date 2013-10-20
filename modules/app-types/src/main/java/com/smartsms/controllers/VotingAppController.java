package com.smartsms.controllers;

import com.smartsms.beans.*;
import com.smartsms.repo.config.ApplicationTypeRepository;
import com.smartsms.repo.impl.AdminRepositoryImpl;
import com.smartsms.security.SecurityUtil;
import com.smartsms.util.KeywordGenerator;
import com.smartsms.util.KeywordSeperator;
import org.apache.commons.lang.StringUtils;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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

    @Autowired
    private KeywordGenerator keywordGenerator;

    private VotingApplication VotingApplication;

    @RequestMapping(value = "/VotingAppCreate", method = RequestMethod.GET)
    public String redirect(Model model){
       model.addAttribute("keywordList",keywordGenerator.GetUniqueKeywords());
        return "VotingAppCreate";

    }

    @RequestMapping(value = "/VotingAppCreate", method = RequestMethod.POST)
    public String submitVotingApplication(VotingApplication application,  @ModelAttribute("keywordStr") String s) {
        application.setKeyword(KeywordSeperator.createKeyword(s));
        this.VotingApplication = application;

        return "redirect:/AddCandidate";

    }
    @RequestMapping(value = "/AddCandidate", method = RequestMethod.POST)
    public String AddCandidate(Candidates candidates)
    {
        List<Candidate> candidateList = candidates.getCandidateList();
        this.VotingApplication.setCandidateList(candidateList);
        return "redirect:/VotingAppConfirm";

    }

    @RequestMapping(value = "/VotingAppConfirm", method = RequestMethod.GET)
    public String redirectConfirm(Model model) {
        model.addAttribute("VotingObj",VotingApplication);
        return "VotingAppConfirm";

    }

    @RequestMapping(value = "/VotingAppConfirm", method = RequestMethod.POST)
    public String submitVote() {
        VotingApplication.setAppId(UUID.randomUUID().toString());
        VotingApplication.setUserID(SecurityUtil.getUserLoggedInname());
        applicationTypeRepository.saveApplication(VotingApplication);
        return "redirect:/VotingAppSuccess";

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
    public String votingView(@RequestParam String appId,Model model){
        model.addAttribute("totalNumberOfVotes",applicationTypeRepository.totalNumberOfVotes(appId));
        model.addAttribute("candidateList", applicationTypeRepository.totalNumberOfVotesByCandidate(appId));
        return "votingView";

    }

    @RequestMapping(value = "/AddCandidate", method = RequestMethod.GET)
    public String addCandidateView(){
        return "AddCandidate";

    }

    @RequestMapping(value = "/submitVote", method = RequestMethod.POST)
    @ResponseBody
    public Response incrementVoteCount(@RequestBody Vote vote){
        VotingApplication votingApplicationByShortCode = applicationTypeRepository.findVotingApplicationByShortCode(vote.getShotCode());
        applicationTypeRepository.incrementCandidateCount(vote.getCandidateId(),votingApplicationByShortCode.getAppId());
        Response response = new Response();
        return response;
    }


}
