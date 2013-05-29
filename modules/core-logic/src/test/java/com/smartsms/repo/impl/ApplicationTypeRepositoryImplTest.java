package com.smartsms.repo.impl;

import com.smartsms.beans.Candidate;
import com.smartsms.beans.Keyword;
import com.smartsms.beans.VotingApplication;
import com.smartsms.repo.config.ApplicationTypeRepository;
import com.smartsms.util.ObjectIDGenerator;
import junit.framework.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

@ContextConfiguration(locations = "classpath*:test-core-logic-context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class ApplicationTypeRepositoryImplTest {

    @Autowired
    private ApplicationTypeRepository applicationTypeRepository;

    @Test
    public void testSaveVotingApplication() throws Exception {
        VotingApplication application = createVotingApplication();
        applicationTypeRepository.saveApplication(application);
        VotingApplication applicationById = applicationTypeRepository.findVotingApplicationById(application.getAppId());
        Assert.assertNotNull(applicationById);
        Assert.assertEquals("votingapp",applicationById.getAppName());
        Assert.assertEquals("votingappdes",applicationById.getAppDescription());
        Assert.assertEquals("test1",applicationById.getKeyword().getName());
    }

    private VotingApplication createVotingApplication(){
        VotingApplication application = new VotingApplication();
        application.setAppId(ObjectIDGenerator.getObjectID());
        application.setAppName("votingapp");
        application.setAppDescription("votingappdes");
        application.setKeyword(createKeyword());
        application.setCandidateList(createCandidateList());
        return application;
    }

    private Keyword createKeyword(){
        Keyword keyword = new Keyword();
        keyword.setId(ObjectIDGenerator.getObjectID());
        keyword.setName("test1");
        keyword.setShortCode("1234");
        return keyword;
    }

    private List<Candidate> createCandidateList(){
        List<Candidate> candidates = new ArrayList<Candidate>();
        Candidate candidate = new Candidate();
        candidate.setCode("1");
        candidate.setDescription("test 1");
        candidates.add(candidate);
        return candidates;
    }
}
