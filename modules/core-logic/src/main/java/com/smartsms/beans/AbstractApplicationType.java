package com.smartsms.beans;


import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.DBRef;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public abstract class AbstractApplicationType {

    @Id
    private ObjectId appId;
    private String appName;
    private String appDescription;
    private String appValidity;
    private Keyword keyword;

    public ObjectId getAppId() {
        return appId;
    }

    public void setAppId(ObjectId appId) {
        this.appId = appId;
    }

    public String getAppName() {
        return appName;
    }

    public void setAppName(String appName) {
        this.appName = appName;
    }

    public String getAppDescription() {
        return appDescription;
    }

    public void setAppDescription(String appDescription) {
        this.appDescription = appDescription;
    }

    public String getAppValidity() {
        return appValidity;
    }

    public void setAppValidity(String appValidity) {
        this.appValidity = appValidity;
    }

    public Keyword getKeyword() {
        return keyword;
    }

    public void setKeyword(Keyword keyword) {
        this.keyword = keyword;
    }
}
