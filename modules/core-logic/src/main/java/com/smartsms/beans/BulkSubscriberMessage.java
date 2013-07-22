package com.smartsms.beans;


import java.util.List;

public class BulkSubscriberMessage {

    private List<String> subscriberNumbers;
    private SubscriberMessage subscriberMessage;

    public List<String> getSubscriberNumbers() {
        return subscriberNumbers;
    }

    public void setSubscriberNumbers(List<String> subscriberNumbers) {
        this.subscriberNumbers = subscriberNumbers;
    }

    public SubscriberMessage getSubscriberMessage() {
        return subscriberMessage;
    }

    public void setSubscriberMessage(SubscriberMessage subscriberMessage) {
        this.subscriberMessage = subscriberMessage;
    }
}
