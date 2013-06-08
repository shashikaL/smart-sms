package com.smartsms.openId.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 * @author shashi
 */
@Component
public class SpringSocialConfig {

    @Value("${facebook.oauth.url}")
    private String facebookLoginUrl;

    @Value("${facebook.app.id}")
    private String facebookAppId;

    @Value("${facebook.app.secret}")
    private String facebookAppSecret;

    public String getFacebookLoginUrl() {
        return facebookLoginUrl;
    }

    public void setFacebookLoginUrl(String facebookLoginUrl) {
        this.facebookLoginUrl = facebookLoginUrl;
    }

    public String getFacebookAppId() {
        return facebookAppId;
    }

    public void setFacebookAppId(String facebookAppId) {
        this.facebookAppId = facebookAppId;
    }

    public String getFacebookAppSecret() {
        return facebookAppSecret;
    }

    public void setFacebookAppSecret(String facebookAppSecret) {
        this.facebookAppSecret = facebookAppSecret;
    }
}
