package com.smartsms.beans;

import com.smartsms.beans.util.AppType;
import org.codehaus.jackson.annotate.JsonIgnoreProperties;
import org.codehaus.jackson.map.annotate.JsonSerialize;

/**
 * Created with IntelliJ IDEA.
 * User: snej
 * Date: 6/9/13
 * Time: 2:28 PM
 * To change this template use File | Settings | File Templates.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
public class SubscriberMessage {
    private String message;

    private String keyword;
    private String shortCode;

    private AppType applicationType;


    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getShortCode() {
        return shortCode;
    }

    public void setShortCode(String shortCode) {
        this.shortCode = shortCode;
    }

    public AppType getApplicationType() {
        return applicationType;
    }

    public void setApplicationType(AppType applicationType) {
        this.applicationType = applicationType;
    }
}
