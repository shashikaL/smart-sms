package com.smartsms.repo.impl;

import com.smartsms.beans.User;
import com.smartsms.repo.UserManagementRepository;
import com.smartsms.repo.config.MongoDBConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserManagementRepositoryImpl implements UserManagementRepository {

    @Autowired
    private MongoDBConfig mongoDBConfig;

    @Autowired
    @Qualifier("userManagementMongoTemplate")
    private MongoTemplate mongoTemplate;

    @Override
    public void saveOrUpdateUser(User user) {
        List<User> users = mongoTemplate.find(new Query(Criteria.where("userId").is(user.getUserId()).
                and("socialNetwork").is(user.getSocialNetwork().name())), User.class);
        if (users != null && users.size() > 0) {
            return;
        }
        mongoTemplate.insert(user, mongoDBConfig.getUserCollectionName());
    }
}
