package com.smartsms.repo.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MongoDBConfig {

    @Value("${smart.sms.mongo.host}")
    private String mongoHost;

    @Value("${smart.sms.mongo.port}")
    private int mongoPort;

    @Value("${smart.sms.apps.database.name}")
    private String appDatabaseName;

    @Value("${smart.sms.user.database.name}")
    private String userMgtDatabaseName;

    @Value("${smart.sms.apps.database.voting.collection}")
    private String votingCollectionName;

    @Value("${smart.sms.apps.database.alert.collection}")
    private String alertCollectionName;

    @Value("${smart.sms.apps.database.service.collection}")
    private String serviceCollectionName;

    @Value("${smart.sms.apps.database.contact.collection}")
    private String contactCollectionName;

    @Value("${smart.sms.user.database.user.collection}")
    private String userCollectionName;

    public String getMongoHost() {
        return mongoHost;
    }

    public void setMongoHost(String mongoHost) {
        this.mongoHost = mongoHost;
    }

    public int getMongoPort() {
        return mongoPort;
    }

    public void setMongoPort(int mongoPort) {
        this.mongoPort = mongoPort;
    }

    public String getAppDatabaseName() {
        return appDatabaseName;
    }

    public void setAppDatabaseName(String appDatabaseName) {
        this.appDatabaseName = appDatabaseName;
    }

    public String getVotingCollectionName() {
        return votingCollectionName;
    }

    public void setVotingCollectionName(String votingCollectionName) {
        this.votingCollectionName = votingCollectionName;
    }

    public String getAlertCollectionName() {
        return alertCollectionName;
    }

    public void setAlertCollectionName(String alertCollectionName) {
        this.alertCollectionName = alertCollectionName;
    }

    public String getServiceCollectionName() {
        return serviceCollectionName;
    }

    public void setServiceCollectionName(String serviceCollectionName) {
        this.serviceCollectionName = serviceCollectionName;
    }

    public String getContactCollectionName() {
        return contactCollectionName;
    }

    public void setContactCollectionName(String contactCollectionName) {
        this.contactCollectionName = contactCollectionName;
    }

    public String getUserMgtDatabaseName() {
        return userMgtDatabaseName;
    }

    public void setUserMgtDatabaseName(String userMgtDatabaseName) {
        this.userMgtDatabaseName = userMgtDatabaseName;
    }

    public String getUserCollectionName() {
        return userCollectionName;
    }

    public void setUserCollectionName(String userCollectionName) {
        this.userCollectionName = userCollectionName;
    }
}
