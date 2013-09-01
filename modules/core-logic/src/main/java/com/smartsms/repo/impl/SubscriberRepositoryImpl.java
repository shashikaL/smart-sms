package com.smartsms.repo.impl;

import com.smartsms.beans.Subscribe;
import com.smartsms.repo.SubscriberRepository;
import com.smartsms.repo.config.MongoDBConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

@Repository
public class SubscriberRepositoryImpl implements SubscriberRepository {

    @Autowired
    private MongoDBConfig mongoDBConfig;

    @Autowired
    @Qualifier("subscriberMongoTemplate")
    private MongoTemplate mongoTemplate;

    @Override
    public void saveSubscriber(Subscribe subscribe) {
        mongoTemplate.save(subscribe, mongoDBConfig.getSubscriberCollectionName());
    }


    @Override
    public Subscribe findSubscriber(String unSubscriberNumber) {
        Subscribe subscriber = mongoTemplate.findOne(new Query(Criteria.where("subscriberNumber").is(unSubscriberNumber)), Subscribe.class, mongoDBConfig.getSubscriberCollectionName());
        return subscriber;
    }
}
