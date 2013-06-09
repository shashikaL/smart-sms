package com.smartsms.beans;


//import org.codehaus.jackson.map.annotate.JsonSerialize;

//@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class Response {

    private String statusMessage;
    private String statusCode;

    public String getStatusMessage() {
        return statusMessage;
    }

    public void setStatusMessage(String statusMessage) {
        this.statusMessage = statusMessage;
    }

    public String getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(String statusCode) {
        this.statusCode = statusCode;
    }
}
