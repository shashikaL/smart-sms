package com.smartsms.repo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.WriteResultChecking;
import org.springframework.stereotype.Component;

@Component
public class MalformedMongoDBTemplate extends AbstractMongoTemplate{

    @Autowired
    private MongoDBConfig mongoDBConfig;

    @Override
    protected String getDatabaseName() {
        return mongoDBConfig.getMalformedDatabaseName();
    }

    @Bean
    public MongoTemplate malMongoTemplate() throws Exception {
        final MongoTemplate template = new MongoTemplate(
                mongoDbFactory(), mappingMongoConverter());
        template.setWriteResultChecking(WriteResultChecking.EXCEPTION);
        return template;
    }
}
