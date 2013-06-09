package com.smartsms.controllers;

import com.smartsms.beans.AlertApplication;
import com.smartsms.beans.Response;
import com.smartsms.beans.Subscribe;
import com.smartsms.beans.SubscriberMessage;
import com.smartsms.beans.util.AppType;
import com.smartsms.repo.SubscriberRepository;
import com.smartsms.repo.config.ApplicationTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


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

    @Autowired
    private SubscriberRepository subscriberRepository;

    @RequestMapping(value = "/subscribe/{subscriberNumber}", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public Response subscription(@RequestBody SubscriberMessage subscriberMessage, @PathVariable("subscriberNumber") String subscriberNumber) {
        if (subscriberMessage.getApplicationType() != AppType.ALERT) {
            return createResponse("404", "Only support for ALERT types");
        }
        AlertApplication alertApplication = applicationTypeRepository.findAlertApplicationByShortCode(subscriberMessage.getShortCode());
        if (alertApplication == null) {
            return createResponse("404", "Invalid Message. Cannot find app for subscribe");
        }

        String message = subscriberMessage.getMessage();
        String[] strings = message.split(" ");
        if (strings.length != 2) {
            return createResponse("404", alertApplication.getInvalidRequestMessage());
        }
        if (!strings[0].equals("REG")) {
            return createResponse("404", alertApplication.getInvalidRequestMessage());
        }

        Subscribe subscribe = new Subscribe();
        subscribe.setSubscriberNumber(subscriberNumber);
        subscribe.setAppId(alertApplication.getAppId());
        subscriberRepository.saveSubscriber(subscribe);

        return createResponse("200", alertApplication.getSubscriptionSuccessfulMessage());

    }

    @RequestMapping(value = "/unsubscribe/{subscriptionNumber}", method = RequestMethod.POST)
    public String unSubscription(@RequestBody SubscriberMessage message, @PathVariable String subscriberNumber) {
        return null;
    }

    private Response createResponse(String code, String message) {
        Response response = new Response();
        response.setStatusCode(code);
        response.setStatusMessage(message);
        return response;

    }
}
