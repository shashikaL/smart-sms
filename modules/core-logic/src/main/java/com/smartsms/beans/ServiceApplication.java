package com.smartsms.beans;


import com.smartsms.beans.util.ScheduledType;

public class ServiceApplication extends AbstractApplicationType {

    private ScheduledType scheduledType;
    private String dispatchTime;
    private String subscriptionSuccessfulMessage;
    private String unSubscriptionSuccessfulMessage;
    private String invalidRequestMessage;

    public ScheduledType getScheduledType() {
        return scheduledType;
    }

    public void setScheduledType(ScheduledType scheduledType) {
        this.scheduledType = scheduledType;
    }

    public String getDispatchTime() {
        return dispatchTime;
    }

    public void setDispatchTime(String dispatchTime) {
        this.dispatchTime = dispatchTime;
    }

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
