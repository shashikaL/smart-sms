package com.smartsms.repo.impl;

import com.smartsms.beans.AlertApplication;
import com.smartsms.beans.Keyword;
import com.smartsms.beans.Subscribe;
import com.smartsms.repo.SubscriberRepository;
import com.smartsms.repo.config.MongoDBConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SubscriberRepositoryImpl implements SubscriberRepository {

    @Autowired
    private MongoDBConfig mongoDBConfig;

    @Autowired
    @Qualifier("subscriberMongoTemplate")
    private MongoTemplate mongoTemplate;

    @Override
    public void saveSubscriber(Subscribe subscribe) {
        mongoTemplate.insert(subscribe, mongoDBConfig.getSubscriberCollectionName());
    }



}
