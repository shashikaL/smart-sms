package com.smartsms.controllers;

import com.smartsms.beans.*;
import com.smartsms.beans.util.AppType;
import com.smartsms.beans.util.STATUS;
import com.smartsms.repo.SubscriberRepository;
import com.smartsms.repo.config.ApplicationTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;


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
        subscribe.setSubscriberStatus(STATUS.SUBSCRIBED);
        subscriberRepository.saveSubscriber(subscribe);

        return createResponse("200", alertApplication.getSubscriptionSuccessfulMessage());

    }
    //---------------------------alert subscription-------------------------------------------------------------------------------------

    @RequestMapping(value = "/unsubscribe/{subscriptionNumber}", method = RequestMethod.POST)
    public Response unSubscription(@RequestBody SubscriberMessage message, @PathVariable String subscriberNumber) {

        if (message.getApplicationType() != AppType.ALERT) {
            return createResponse("404", "Only support for ALERT types");
        }
        AlertApplication alertApplication = applicationTypeRepository.findAlertApplicationByShortCode(message.getShortCode());
        if (alertApplication == null) {
            return createResponse("404", "Invalid Message. Cannot find app for Unsubscribe");
        }

        String unsubscribermessage = message.getMessage();
        String[] strings = unsubscribermessage.split(" ");
        if (strings.length != 2) {
            return createResponse("404", alertApplication.getInvalidRequestMessage());
        }
        if (!strings[0].equals("UNREG")) {
            return createResponse("404", alertApplication.getInvalidRequestMessage());
        }


        Subscribe unsubscriber = subscriberRepository.findSubscriber(subscriberNumber);
        unsubscriber.setSubscriberStatus(STATUS.UNSUBSCRIBED);
        subscriberRepository.saveSubscriber(unsubscriber);

        return createResponse("200", alertApplication.getUnSubscriptionSuccessfulMessage());

    }

//--------------------alert unsubscription-------------------------------------------------------------------------------------------------------

    @RequestMapping(value = "/bulk/subscribe", method = RequestMethod.POST)
    @ResponseBody
    public Response handleBulkSubscription(@RequestBody BulkSubscriberMessage bulkSubscriberMessage){
        AppType applicationType = bulkSubscriberMessage.getSubscriberMessage().getApplicationType();
        switch (applicationType) {
            case ALERT:
                return handleAlertTypes(bulkSubscriberMessage);
            default:
                return handleDefaultType();
        }

    }

    private Response handleAlertTypes(BulkSubscriberMessage bulkSubscriberMessage){
        SubscriberMessage subscriberMessage = bulkSubscriberMessage.getSubscriberMessage();
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

        List<String> subscriberNumbers = bulkSubscriberMessage.getSubscriberNumbers();
        for (String number : subscriberNumbers){
            Subscribe subscribe = new Subscribe();
            subscribe.setSubscriberNumber(number);
            subscribe.setAppId(alertApplication.getAppId());
            subscribe.setSubscriberStatus(STATUS.SUBSCRIBED);
            subscriberRepository.saveSubscriber(subscribe);
        }
        return createResponse("200", alertApplication.getSubscriptionSuccessfulMessage());
    }

    private Response handleDefaultType(){
        return createResponse("404", "Unsupported Type");
    }

    private Response createResponse(String code, String message) {
        Response response = new Response();
        response.setStatusCode(code);
        response.setStatusMessage(message);
        return response;

    }

    //-----------------------bulk subscription--------------------------------------------------------------------------------------------------
}
