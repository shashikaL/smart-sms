package com.smartsms.beans;


import com.smartsms.beans.util.ScheduledType;

public class ServiceApplication extends AbstractApplicationType {

    private ScheduledType scheduledType;
    private String dispatchTime;
    private String subscriptionSuccessfulMessage;
    private String unSubscriptionSuccessfulMessage;
    private String invalidRequestMessage;
    private String dispatchHour;
    private String dispatchMinute;
    private String serviceMessage;
    private ExecutionType executionType;

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
        this.dispatchTime = dispatchHour + ":" + dispatchMinute;
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

    public String getDispatchHour() {
        return dispatchHour;
    }

    public void setDispatchHour(String dispatchHour) {
        this.dispatchHour = dispatchHour;
    }

    public String getDispatchMinute() {
        return dispatchMinute;
    }

    public void setDispatchMinute(String dispatchMinute) {
        this.dispatchMinute = dispatchMinute;
    }

    public String getServiceMessage() {
        return serviceMessage;
    }

    public void setServiceMessage(String serviceMessage) {
        this.serviceMessage = serviceMessage;
    }

    public ExecutionType getExecutionType() {
        return executionType;
    }

    public void setExecutionType(ExecutionType executionType) {
        this.executionType = executionType;
    }
}
