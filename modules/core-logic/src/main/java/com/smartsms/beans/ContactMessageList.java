package com.smartsms.beans;

import java.util.List;


public class ContactMessageList {

    private List<ContactAppMessage> contactAppMessage;
    private String shortCode;

    public List<ContactAppMessage> getContactAppMessage() {
        return contactAppMessage;
    }

    public void setContactAppMessage(List<ContactAppMessage> contactAppMessage) {
        this.contactAppMessage = contactAppMessage;
    }

    public String getShortCode() {
        return shortCode;
    }

    public void setShortCode(String shortCode) {
        this.shortCode = shortCode;
    }
}
