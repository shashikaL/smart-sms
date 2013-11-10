package com.smartsms.repo.impl;


import com.smartsms.beans.*;
import com.smartsms.repo.config.ApplicationTypeRepository;
import com.smartsms.repo.config.MongoDBConfig;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ApplicationTypeRepositoryImpl implements ApplicationTypeRepository {

    @Autowired
    private MongoDBConfig mongoDBConfig;
    @Autowired
    @Qualifier("appTypeMongoTemplate")
    private MongoTemplate mongoTemplate;

    @Override
    public void saveApplication(AbstractApplicationType application) {
        if (application instanceof VotingApplication) {
            mongoTemplate.save(application, mongoDBConfig.getVotingCollectionName());
        }
        if (application instanceof AlertApplication) {
            mongoTemplate.save(application, mongoDBConfig.getAlertCollectionName());
        }
        if (application instanceof ContactApplication) {
            mongoTemplate.save(application, mongoDBConfig.getContactCollectionName());
        }
        if (application instanceof ServiceApplication) {
            mongoTemplate.save(application, mongoDBConfig.getServiceCollectionName());
        }
    }

    @Override
    public VotingApplication findVotingApplicationById(String id) {
        return mongoTemplate.findById(id, VotingApplication.class, mongoDBConfig.getVotingCollectionName());
    }

    @Override
    public List<AlertApplication> findAllAlertApplication() {
        return mongoTemplate.findAll(AlertApplication.class, mongoDBConfig.getAlertCollectionName());
    }

    @Override
    public AlertApplication findAlertApplicationByKeyword(Keyword keyword) {
        List<AlertApplication> alertApplications = mongoTemplate.findAll(AlertApplication.class, mongoDBConfig.getAlertCollectionName());
        for (AlertApplication alertApplication : alertApplications) {
            if (alertApplication.getKeyword() == null) {
                continue;
            }
            Keyword keyword1 = alertApplication.getKeyword();
            if (keyword1.getName().equals(keyword.getName()) && keyword1.getShortCode().equals(keyword.getShortCode())) {
                return alertApplication;
            }
        }
        return null;
    }

    @Override
    public AlertApplication findAlertApplicationByShortCode(String shortCode) {
        List<AlertApplication> alertApplications = mongoTemplate.findAll(AlertApplication.class, mongoDBConfig.getAlertCollectionName());
        for (AlertApplication alertApplication : alertApplications) {
            if (alertApplication.getKeyword() == null) {
                continue;
            }
            if (alertApplication.getKeyword().getShortCode().equals(shortCode)) {
                return alertApplication;
            }
        }
        return null;
    }

    @Override
    public List<ServiceApplication> findAllServiceApplications() {
        return mongoTemplate.findAll(ServiceApplication.class, mongoDBConfig.getServiceCollectionName());
    }

    @Override
    public List<ServiceApplication> findAllServiceApplicationByUsername(String username) {
        return mongoTemplate.find(new Query(Criteria.where("userID").is(username)), ServiceApplication.class, mongoDBConfig.getServiceCollectionName());
    }

    @Override
    public List<AlertApplication> findAllAlertApplicationByUsername(String username) {
        return mongoTemplate.find(new Query(Criteria.where("userID").is(username)), AlertApplication.class, mongoDBConfig.getAlertCollectionName());
    }

    @Override
    public List<VotingApplication> findAllVotingApplicationByUsername(String username) {
        return mongoTemplate.find(new Query(Criteria.where("userID").is(username)), VotingApplication.class, mongoDBConfig.getVotingCollectionName());
    }

    @Override
    public List<ContactApplication> findAllContactApplicationByUsername(String username) {
        return mongoTemplate.find(new Query(Criteria.where("userID").is(username)), ContactApplication.class, mongoDBConfig.getContactCollectionName());
    }

    @Override
    public void incrementCandidateCount(String candidateId, String appId) {
        VotingApplication application = mongoTemplate.findById(appId, VotingApplication.class, mongoDBConfig.getVotingCollectionName());
        List<Candidate> candidateList = application.getCandidateList();
        if (candidateList == null || candidateList.size() == 0) {
            return;
        }
        for (Candidate candidate : candidateList) {
            if (candidateId.equals(candidate.getCode())) {
                if (StringUtils.isEmpty(candidate.getCount())) {
                    candidate.setCount("1");
                } else {
                    int newVal = Integer.parseInt(candidate.getCount()) + 1;
                    candidate.setCount(String.valueOf(newVal));
                }

            }
        }
        saveApplication(application);

    }

    @Override
    public VotingApplication findVotingApplicationByShortCode(String shortCode) {
        List<VotingApplication> all = mongoTemplate.findAll(VotingApplication.class, mongoDBConfig.getVotingCollectionName());
        for (VotingApplication votingApplication : all) {
            if (votingApplication.getKeyword() == null) {
                continue;
            }
            if (votingApplication.getKeyword().getShortCode().equals(shortCode)) {
                return votingApplication;
            }
        }
        return null;
    }

    @Override
    public ContactApplication findContactApplicationByShortCode(String shortCode) {
        List<ContactApplication> all = mongoTemplate.findAll(ContactApplication.class, mongoDBConfig.getContactCollectionName());
        for (ContactApplication ContactApplication : all) {
            if (ContactApplication.getKeyword() == null) {
                continue;
            }
            if (ContactApplication.getKeyword().getShortCode().equals(shortCode)) {
                return ContactApplication;
            }
        }
        return null;
    }

   /* @Override
    public void saveContactResponse(ContactResponse response) {
           mongoTemplate.save(response,mongoDBConfig.getContactResponseCollectionName());
    }*/

    @Override
    public List<Keyword> FindAllKeywords() {
        return mongoTemplate.findAll(Keyword.class, mongoDBConfig.getKeywordCollection());
        //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public ServiceApplication findServiceApplicationById(String appId) {
        return mongoTemplate.findById(appId, ServiceApplication.class, mongoDBConfig.getServiceCollectionName());
    }

    @Override
    public int totalNumberOfVotes(String appId) {
        VotingApplication application = mongoTemplate.findById(appId, VotingApplication.class, mongoDBConfig.getVotingCollectionName());
        int total = 0;
        for (Candidate candidate : application.getCandidateList()) {
            if (StringUtils.isEmpty(candidate.getCount())) {
                continue;
            }
            total += Integer.parseInt(candidate.getCount());
        }
        return total;
    }

    @Override
    public List<Candidate> totalNumberOfVotesByCandidate(String appId) {
        VotingApplication application = mongoTemplate.findById(appId, VotingApplication.class, mongoDBConfig.getVotingCollectionName());
        List<Candidate> candidateList = new ArrayList<Candidate>();
        for (Candidate candidate : application.getCandidateList()) {
            if (StringUtils.isEmpty(candidate.getCode())) {
                candidate.setCount("0");
                continue;
            }
            candidateList.add(candidate);
        }
        return candidateList;
    }

    @Override
    public ContactApplication findContactApplicationById(String appId) {
        return mongoTemplate.findById(appId, ContactApplication.class, mongoDBConfig.getContactCollectionName());
    }
}
