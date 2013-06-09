package com.smartsms.controllers;

import com.smartsms.beans.AlertApplication;
import com.smartsms.repo.config.ApplicationTypeRepository;
import com.smartsms.repo.impl.ApplicationTypeRepositoryImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.smartsms.beans.SubscriberMessage;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.smartsms.repo.config.ApplicationTypeRepository;
import com.smartsms.beans.Subscribe;


/**
 * Created with IntelliJ IDEA.
 * User: snej
 * Date: 6/9/13
 * Time: 2:19 PM
 * To change this template use File | Settings | File Templates.
 */

@Controller
public class SubscriptionHandlingController {

    @Autowired
    private ApplicationTypeRepository applicationTypeRepository;

    Subscribe subscriber = new Subscribe();

    @RequestMapping(value = "/subscribe/{subscriberNumber}", method = RequestMethod.POST)
    public String subscription(@RequestBody SubscriberMessage message, @PathVariable String subscriberNumber){

        subscriber.setAppId(applicationTypeRepository.findAlertApplicationByShortCode(message.getShortCode()).getAppId());

        return subscriberNumber;

    }

    @RequestMapping(value = "/unsubscribe/{subscriptionNumber}", method = RequestMethod.POST)
    public String unSubscription(@RequestBody SubscriberMessage message, @PathVariable String subscriberNumber){
                   return null;
    }
}
