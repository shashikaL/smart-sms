package com.smartsms.beans;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import com.smartsms.beans.util.STATUS;

import java.util.UUID;

@Document
public class Subscribe {
    @Id
    private String id;
    private String appId;
    private String subscriberNumber;

    private STATUS subscriberStatus;


    public Subscribe() {
        this.id = UUID.randomUUID().toString();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAppId() {
        return appId;
    }

    public void setAppId(String appId) {
        this.appId = appId;
    }

    public String getSubscriberNumber() {
        return subscriberNumber;
    }

    public void setSubscriberNumber(String subscriberNumber) {
        this.subscriberNumber = subscriberNumber;
    }

     public void setSubscriberStatus(STATUS subscriberStatus) {
         this.subscriberStatus = subscriberStatus;
}    }
