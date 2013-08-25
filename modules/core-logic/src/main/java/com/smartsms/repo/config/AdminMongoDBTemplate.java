package com.smartsms.repo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.WriteResultChecking;
import org.springframework.stereotype.Component;

/**
 * Created with IntelliJ IDEA.
 * User: snej
 * Date: 8/25/13
 * Time: 10:47 AM
 * To change this template use File | Settings | File Templates.
 */
@Component
public class AdminMongoDBTemplate extends AbstractMongoTemplate{

    @Autowired
    private MongoDBConfig mongoDBConfig;

    @Override
    protected String getDatabaseName() {
        return mongoDBConfig.getAdminDatabaseName();
    }

    @Bean
    public MongoTemplate adminMongoTemplate() throws Exception {
        final MongoTemplate template = new MongoTemplate(
                mongoDbFactory(), mappingMongoConverter());
        template.setWriteResultChecking(WriteResultChecking.EXCEPTION);
        return template;
    }
}
