package com.smartsms.controllers;

import com.smartsms.openId.config.SpringSocialConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.connect.ConnectionFactoryLocator;
import org.springframework.social.oauth1.AuthorizedRequestToken;
import org.springframework.social.oauth1.OAuth1Operations;
import org.springframework.social.oauth1.OAuth1Parameters;
import org.springframework.social.oauth1.OAuthToken;
import org.springframework.social.twitter.api.Twitter;
import org.springframework.social.twitter.api.TwitterProfile;
import org.springframework.social.twitter.api.impl.TwitterTemplate;
import org.springframework.social.twitter.connect.TwitterConnectionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @Autowired
    private SpringSocialConfig springSocialConfig;

    @Autowired
    private ConnectionFactoryLocator connectionFactoryLocator;

    @Autowired
    private OAuth1Parameters twitterOAuth1Parameters;

    private OAuthToken requestToken;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String redirectLogin(Model model){
        String twitterAuthUrl = findTwitterAuthUrl();
        model.addAttribute("twitterUrl",twitterAuthUrl);
        return "login";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/social-connections/twitter")
    public String authenticateWithTwitter(@RequestParam("oauth_token") String authToken, @RequestParam("oauth_verifier") String authVerifier){
        TwitterConnectionFactory twitterConnectionFactory = (TwitterConnectionFactory) connectionFactoryLocator
                .getConnectionFactory(Twitter.class);

        OAuth1Operations oauthOperations = twitterConnectionFactory
                .getOAuthOperations();

        OAuthToken accessToken = oauthOperations.exchangeForAccessToken(new AuthorizedRequestToken(requestToken, authVerifier), null);

        Twitter twitter = new TwitterTemplate(springSocialConfig.getTwitterAppKey(),springSocialConfig.getTwitterAppSecret(),accessToken.getValue(),accessToken.getSecret());
        TwitterProfile userProfile = twitter.userOperations().getUserProfile();
        System.out.println(userProfile.getFriendsCount());
        return "redirect:/Home";
    }

    private String findTwitterAuthUrl(){
        TwitterConnectionFactory twitterConnectionFactory = (TwitterConnectionFactory) connectionFactoryLocator
                .getConnectionFactory(Twitter.class);

        OAuth1Operations oauthOperations = twitterConnectionFactory
                .getOAuthOperations();

        requestToken = oauthOperations.fetchRequestToken(
                twitterOAuth1Parameters.getCallbackUrl(), null);
        System.out.println(requestToken.getValue());
        System.out.println(requestToken.getSecret());
        return oauthOperations.buildAuthorizeUrl(
                requestToken.getValue(), null);

    }
}
