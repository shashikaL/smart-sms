package com.smartsms.repo.impl;


import com.smartsms.beans.*;
import com.smartsms.repo.config.ApplicationTypeRepository;
import com.smartsms.repo.config.MongoDBConfig;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;

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
    public VotingApplication findVotingApplicationById(ObjectId id) {
        return mongoTemplate.findById(id, VotingApplication.class, mongoDBConfig.getVotingCollectionName());
    }
}
