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

    @Value("${smart.sms.mal.database.name}")
    private String MalformedDatabaseName;

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

    @Value("${smart.sms.subscribers.database.name}")
    private String subscribersDatabaseName;

    @Value("${smart.sms.subscribers.database.subscriber.collection}")
    private String subscriberCollectionName;

    @Value("${smart.sms.mal.database.mal.collection}")
    private String malCollectionName;

    @Value("${smart.sms.admin.database.name}")
    private String adminDatabaseName;

    @Value("${smart.sms.admin.database.filter.rejected.messages}")
    private String adminFilterRejectedMessageCollectionName;

    @Value("${smart.sms.apps.database.keyword.collection}")
    private String keywordCollection;

    @Value("${smart.sms.admin.database.contact.messages}")
    private String contactMessageCollection;

    @Value("${smart.sms.mal.word.content}")
    private String wordCollections;

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

    public String getSubscribersDatabaseName() {
        return subscribersDatabaseName;
    }

    public void setSubscribersDatabaseName(String subscribersDatabaseName) {
        this.subscribersDatabaseName = subscribersDatabaseName;
    }

    public String getSubscriberCollectionName() {
        return subscriberCollectionName;
    }

    public void setSubscriberCollectionName(String subscriberCollectionName) {
        this.subscriberCollectionName = subscriberCollectionName;
    }

    public String getMalformedDatabaseName(){
        return MalformedDatabaseName;
    }

    public void setMalformedDatabaseName(String MalformedDatabaseName){
        this.MalformedDatabaseName = MalformedDatabaseName;
    }

    public String getMalCollectionName() {
        return malCollectionName;
    }

    public void setMalCollectionName(String malCollectionName){
        this.malCollectionName = malCollectionName;
    }

    public String getAdminDatabaseName() {
        return adminDatabaseName;
    }

    public String getAdminFilterRejectedMessageCollectionName() {
        return adminFilterRejectedMessageCollectionName;
    }

    public String getKeywordCollection() {
        return keywordCollection;
    }

    public void setKeywordCollection(String keywordCollection) {
        this.keywordCollection = keywordCollection;
    }

    public String getContactMessageCollection() {
        return contactMessageCollection;
    }

    public void setContactMessageCollection(String contactMessageCollection) {
        this.contactMessageCollection = contactMessageCollection;
    }

    public String getWordCollections() {
        return wordCollections;
    }

    public void setWordCollections(String wordCollections) {
        this.wordCollections = wordCollections;
    }
}
