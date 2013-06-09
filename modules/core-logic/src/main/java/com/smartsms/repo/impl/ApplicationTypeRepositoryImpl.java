package com.smartsms.repo.impl;


import com.smartsms.beans.*;
import com.smartsms.repo.config.ApplicationTypeRepository;
import com.smartsms.repo.config.MongoDBConfig;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;

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
            mongoTemplate.insert(application, mongoDBConfig.getVotingCollectionName());
        }
        if (application instanceof AlertApplication) {
            mongoTemplate.insert(application, mongoDBConfig.getAlertCollectionName());
        }
        if (application instanceof ContactApplication) {
            mongoTemplate.insert(application, mongoDBConfig.getContactCollectionName());
        }
        if (application instanceof ServiceApplication) {
            mongoTemplate.insert(application, mongoDBConfig.getServiceCollectionName());
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
            if(keyword1.getName().equals(keyword.getName()) && keyword1.getShortCode().equals(keyword.getShortCode())){
                return alertApplication;
            }
        }
        return null;
    }

    @Override
    public AlertApplication findAlertApplicationByShortCode(String shortCode){
        List<AlertApplication> alertApplications = mongoTemplate.findAll(AlertApplication.class, mongoDBConfig.getAlertCollectionName());
        for (AlertApplication alertApplication : alertApplications) {
            if (alertApplication.getKeyword() == null) {
                continue;
            }
            if(alertApplication.getKeyword().getShortCode().equals(shortCode)){
                return alertApplication;
            }
        }
        return null;
    }
}
