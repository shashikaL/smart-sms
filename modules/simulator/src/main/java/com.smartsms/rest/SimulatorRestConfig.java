package com.smartsms.rest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

@Component
public class SimulatorRestConfig {

    @Value("${subscription.web.service.url}")
    private String subscriptionWebServiceUrl;

    @Bean
    public static RestTemplate restTemplate(){
        return new RestTemplate();
    }

    public String getSubscriptionWebServiceUrl() {
        return subscriptionWebServiceUrl;
    }

    public void setSubscriptionWebServiceUrl(String subscriptionWebServiceUrl) {
        this.subscriptionWebServiceUrl = subscriptionWebServiceUrl;
    }
}
