package com.smartsms.openId.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.social.connect.ConnectionFactoryLocator;
import org.springframework.social.connect.support.ConnectionFactoryRegistry;
import org.springframework.social.oauth1.OAuth1Parameters;
import org.springframework.social.twitter.connect.TwitterConnectionFactory;

/**
 * @author shashi
 */
@Configuration
public class SpringSocialConfig {

    @Value("${facebook.oauth.url}")
    private String facebookLoginUrl;

    @Value("${facebook.app.id}")
    private String facebookAppId;

    @Value("${facebook.app.secret}")
    private String facebookAppSecret;

    @Value("${twitter.app.secret}")
    private String twitterAppSecret;

    @Value("${twitter.app.key}")
    private String twitterAppKey;

    @Value("${twitter.redirect.url}")
    private String twitterRedirectURL;


    @Bean
    @Scope(value = "singleton")
    public ConnectionFactoryLocator connectionFactoryLocator() {

        ConnectionFactoryRegistry registry = new ConnectionFactoryRegistry();

        // Register Facebook Connection Factory
//        registry.addConnectionFactory(new FacebookConnectionFactory(
//                facebookAppKey, facebookAppSecret));

        // Register LinkedIn Connection Factory
//        registry.addConnectionFactory(new LinkedInConnectionFactory(
//                linkedinAppKey, linkedinAppSecret));

        // Register Twitter Connection Factory
        registry.addConnectionFactory(new TwitterConnectionFactory(
                twitterAppKey, twitterAppSecret));

        return registry;
    }

    @Bean
    public OAuth1Parameters twitterOAuth1Parameters() {
        OAuth1Parameters params = new OAuth1Parameters();
        params.setCallbackUrl(twitterRedirectURL);
        return params;
    }

    public String getTwitterAppSecret() {
        return twitterAppSecret;
    }

    public void setTwitterAppSecret(String twitterAppSecret) {
        this.twitterAppSecret = twitterAppSecret;
    }

    public String getTwitterAppKey() {
        return twitterAppKey;
    }

    public void setTwitterAppKey(String twitterAppKey) {
        this.twitterAppKey = twitterAppKey;
    }
}
