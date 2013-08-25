package com.smartsms.beans;

/**
 * Created with IntelliJ IDEA.
 * User: snej
 * Date: 8/25/13
 * Time: 10:40 AM
 * To change this template use File | Settings | File Templates.
 */
public class FilterRejectedMessage {
    private String applicationId;
    private String message;
    private String applicationUser;
    private String applicationName;


    public String getApplicationId() {
        return applicationId;
    }

    public void setApplicationId(String applicationId) {
        this.applicationId = applicationId;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getApplicationUser() {
        return applicationUser;
    }

    public void setApplicationUser(String applicationUser) {
        this.applicationUser = applicationUser;
    }

    public String getApplicationName() {
        return applicationName;
    }

    public void setApplicationName(String applicationName) {
        this.applicationName = applicationName;
    }
}
