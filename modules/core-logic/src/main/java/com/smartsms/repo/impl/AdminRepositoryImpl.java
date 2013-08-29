package com.smartsms.repo.impl;

import com.smartsms.beans.ContactAppMessage;
import com.smartsms.beans.FilterRejectedMessage;
import com.smartsms.beans.Malformed;
import com.smartsms.beans.Word;
import com.smartsms.repo.config.MongoDBConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: snej
 * Date: 8/25/13
 * Time: 10:56 AM
 * To change this template use File | Settings | File Templates.
 */

@Service
public class AdminRepositoryImpl {
    @Autowired
    private MongoDBConfig mongoDBConfig;

    @Autowired
    @Qualifier("adminMongoTemplate")
    private MongoTemplate mongoTemplate;

    public void saveFilterRejectedMessages(FilterRejectedMessage FilterRejectedMessage) {
        mongoTemplate.insert(FilterRejectedMessage, mongoDBConfig.getAdminFilterRejectedMessageCollectionName());
    }

    public List<FilterRejectedMessage> findAllFilterRejectedMessage() {
        return mongoTemplate.findAll(FilterRejectedMessage.class, mongoDBConfig.getAdminFilterRejectedMessageCollectionName());
    }

    public void saveContactMessage(ContactAppMessage contactAppMessage) {
        mongoTemplate.save(contactAppMessage, mongoDBConfig.getContactMessageCollection());
    }

    public List<ContactAppMessage> findContactAppMessages() {
        return mongoTemplate.findAll(ContactAppMessage.class, mongoDBConfig.getContactMessageCollection());
    }

    public void save(Word word) {
        mongoTemplate.insert(word, mongoDBConfig.getWordCollections());
    }

    public void remove(){
        mongoTemplate.dropCollection(Word.class);
    }
}
