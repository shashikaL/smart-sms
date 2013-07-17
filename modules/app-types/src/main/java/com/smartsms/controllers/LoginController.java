package com.smartsms.controllers;

import com.smartsms.beans.User;
import com.smartsms.beans.util.SocialNetwork;
import com.smartsms.openId.config.SpringSocialConfig;
import com.smartsms.repo.UserManagementRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.connect.ConnectionFactoryLocator;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.FacebookProfile;
import org.springframework.social.facebook.api.impl.FacebookTemplate;
import org.springframework.social.facebook.connect.FacebookConnectionFactory;
import org.springframework.social.oauth1.AuthorizedRequestToken;
import org.springframework.social.oauth1.OAuth1Operations;
import org.springframework.social.oauth1.OAuth1Parameters;
import org.springframework.social.oauth1.OAuthToken;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.social.twitter.api.Twitter;
import org.springframework.social.twitter.api.TwitterProfile;
import org.springframework.social.twitter.api.impl.TwitterTemplate;
import org.springframework.social.twitter.connect.TwitterConnectionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

    @Autowired
    private SpringSocialConfig springSocialConfig;

    @Autowired
    private ConnectionFactoryLocator connectionFactoryLocator;

    @Autowired
    private OAuth1Parameters twitterOAuth1Parameters;

    @Autowired
    private OAuth2Parameters facebookOAuth2Parameters;

    @Autowired
    private UserManagementRepository userManagementRepository;

    private OAuthToken requestToken;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String redirectLogin(Model model) {
        String twitterAuthUrl = findTwitterAuthUrl();
        model.addAttribute("twitterUrl", twitterAuthUrl);
        model.addAttribute("facebookUrl", findFacebookAuthUrl());
        return "login";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/social-connections/twitter")
    public String authenticateWithTwitter(@RequestParam("oauth_token") String authToken, @RequestParam("oauth_verifier") String authVerifier) {
        TwitterConnectionFactory twitterConnectionFactory = (TwitterConnectionFactory) connectionFactoryLocator
                .getConnectionFactory(Twitter.class);

        OAuth1Operations oauthOperations = twitterConnectionFactory
                .getOAuthOperations();

        OAuthToken accessToken = oauthOperations.exchangeForAccessToken(new AuthorizedRequestToken(requestToken, authVerifier), null);

        Twitter twitter = new TwitterTemplate(springSocialConfig.getTwitterAppKey(), springSocialConfig.getTwitterAppSecret(), accessToken.getValue(), accessToken.getSecret());
        TwitterProfile userProfile = twitter.userOperations().getUserProfile();
        userManagementRepository.saveUser(createUser(SocialNetwork.TWITTER, userProfile.getScreenName(), userProfile.getName(), userProfile.getName()));
        return "redirect:/Home?username="+ userProfile.getScreenName();
    }

    @RequestMapping(method = RequestMethod.GET, value = "/social-connections/facebook")
    public String authenticateWithFacebook(@RequestParam(value = "access_token", required = false, defaultValue = "access") String accessToken) {
        if (accessToken.equals("access")) {
            return "redirect:/Home";
        }
        Facebook facebook = new FacebookTemplate(accessToken);
        FacebookProfile userProfile = facebook.userOperations().getUserProfile();
        userManagementRepository.saveUser(createUser(SocialNetwork.FACEBOOK, userProfile.getUsername(), userProfile.getFirstName(), userProfile.getLastName()));
        return "redirect:/Home?username="+userProfile.getUsername();
    }

    private String findTwitterAuthUrl() {
        TwitterConnectionFactory twitterConnectionFactory = (TwitterConnectionFactory) connectionFactoryLocator
                .getConnectionFactory(Twitter.class);

        OAuth1Operations oauthOperations = twitterConnectionFactory
                .getOAuthOperations();

        requestToken = oauthOperations.fetchRequestToken(
                twitterOAuth1Parameters.getCallbackUrl(), null);
        return oauthOperations.buildAuthorizeUrl(
                requestToken.getValue(), null);

    }

    private String findFacebookAuthUrl() {
        OAuth2Parameters params = new OAuth2Parameters();
        params.setScope(facebookOAuth2Parameters.getScope());
        params.setRedirectUri(facebookOAuth2Parameters.getRedirectUri() + "&response_type=token&");
        return params.getRedirectUri() + params.getScope();
    }

    private User createUser(SocialNetwork socialNetwork, String userId, String firstName, String lastName) {
        User user = new User();
        user.setUserId(userId);
        user.setFirstName(firstName);
        user.setSocialNetwork(socialNetwork);
        user.setLastName(lastName);
        return user;
    }

}
