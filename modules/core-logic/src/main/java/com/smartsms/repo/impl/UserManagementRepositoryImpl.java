package com.smartsms.repo.impl;

import com.smartsms.beans.User;
import com.smartsms.repo.UserManagementRepository;
import com.smartsms.repo.config.MongoDBConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;

@Service
public class UserManagementRepositoryImpl implements UserManagementRepository {

    @Autowired
    private MongoDBConfig mongoDBConfig;

    @Autowired
    @Qualifier("userManagementMongoTemplate")
    private MongoTemplate mongoTemplate;

    @Override
    public void saveUser(User user) {
        mongoTemplate.insert(user,mongoDBConfig.getUserCollectionName());
    }
}
