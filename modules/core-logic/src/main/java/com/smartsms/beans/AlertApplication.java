package com.smartsms.beans;

public class AlertApplication extends AbstractApplicationType {

    private String subscriptionSuccessfulMessage;
    private String unSubscriptionSuccessfulMessage;
    private String invalidRequestMessage;

    public String getSubscriptionSuccessfulMessage() {
        return subscriptionSuccessfulMessage;
    }

    public void setSubscriptionSuccessfulMessage(String subscriptionSuccessfulMessage) {
        this.subscriptionSuccessfulMessage = subscriptionSuccessfulMessage;
    }

    public String getUnSubscriptionSuccessfulMessage() {
        return unSubscriptionSuccessfulMessage;
    }

    public void setUnSubscriptionSuccessfulMessage(String unSubscriptionSuccessfulMessage) {
        this.unSubscriptionSuccessfulMessage = unSubscriptionSuccessfulMessage;
    }

    public String getInvalidRequestMessage() {
        return invalidRequestMessage;
    }

    public void setInvalidRequestMessage(String invalidRequestMessage) {
        this.invalidRequestMessage = invalidRequestMessage;
    }
}
