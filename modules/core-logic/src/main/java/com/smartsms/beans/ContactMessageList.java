package com.smartsms.beans;

import java.util.List;

/**
 * @author rajith
 */
public class ContactMessageList {

    private List<ContactAppMessage> contactAppMessage;

    public List<ContactAppMessage> getContactAppMessage() {
        return contactAppMessage;
    }

    public void setContactAppMessage(List<ContactAppMessage> contactAppMessage) {
        this.contactAppMessage = contactAppMessage;
    }
}
