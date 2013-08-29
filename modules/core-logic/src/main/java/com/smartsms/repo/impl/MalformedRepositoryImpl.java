package com.smartsms.repo.impl;


import com.smartsms.beans.Malformed;
import com.smartsms.repo.config.MalformedRepository;
import com.smartsms.repo.config.MongoDBConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MalformedRepositoryImpl implements MalformedRepository {

    @Autowired
    private MongoDBConfig mongoDBConfig;

    @Autowired
    @Qualifier("malMongoTemplate")
    private MongoTemplate mongoTemplate;

    public void saveMalformed(Malformed Malformed) {
        mongoTemplate.insert(Malformed, mongoDBConfig.getMalCollectionName());
    }

    public List<Malformed> findAllMalformed() {
        return mongoTemplate.findAll(Malformed.class, mongoDBConfig.getMalCollectionName());
    }

    @Override
    public void save(List<String> words) {
        mongoTemplate.save(words, mongoDBConfig.getWordCollections());
    }

    @Override
    public void removeWords() {
        mongoTemplate.remove(String.class, mongoDBConfig.getWordCollections());
    }
}
