package com.simulator.controller;

import com.smartsms.beans.*;
import com.smartsms.beans.util.AppType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private RestTemplate restTemplate;

    private String responseMessage;
    private String responseCode;

    @RequestMapping(method = RequestMethod.GET, value = "/home")
    public String redirect() {
        return "home";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/app-type-select")
    public String redirectToAppTypeSelection() {
        return "app-type-select";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/bulk-alert")
    public String redirectToBulkAlert() {
        return "bulk-alert-app-subscription";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/single-app-type-select")
    public String redirectToSingleSubs() {
        return "single-app-type-select";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/single-contact-request")
    public String redirectToSingleContactRequest() {
        return "single-contact-request";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/single-contact-request")
    public String submitToSingleContactRequest(@RequestParam String message, @RequestParam String shortCode, @RequestParam String number) {
        ContactAppMessage contactAppMessage = new ContactAppMessage();
        contactAppMessage.setContactNumber(number);
        contactAppMessage.setRequestMessage(message);
        contactAppMessage.setShortCode(shortCode);

        Response response = restTemplate.postForObject("http://localhost:8080/app-ui/contactAppUse", contactAppMessage, Response.class);
        responseMessage = response.getStatusMessage();
        responseCode = response.getStatusCode();
        return "redirect:/response";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/bulk-alert")
    public String submitBulkAlert(@RequestParam Integer count, @RequestParam String message, @RequestParam String shortCode) {
        BulkSubscriberMessage bulkSubscriberMessage = createBulkSubscriberMessage(count, message, shortCode);
        Response response = restTemplate.postForObject("http://localhost:8080/app-ui/bulk/subscribe", bulkSubscriberMessage, Response.class);
        responseMessage = response.getStatusMessage();
        responseCode = response.getStatusCode();
        return "redirect:/response";

    }

    @RequestMapping(method = RequestMethod.GET, value = "/bulk-contact")
    public String redirectToBulkContact() {
        return "bulk-contact-app-subscription";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/bulk-contact")
    public String submitBulkContact(@RequestParam Integer count, @RequestParam String message, @RequestParam String shortCode) {
        ContactMessageList contactMessageList = createContactMessageList(count, message, shortCode);
        contactMessageList.setShortCode(shortCode);
        Response response = restTemplate.postForObject("http://localhost:8080/app-ui/bulk/contactAppUse", contactMessageList, Response.class);
        responseMessage = response.getStatusMessage();
        responseCode = response.getStatusCode();
        return "redirect:/response";

    }

    @RequestMapping(method = RequestMethod.GET, value = "/response")
    public String redirectToResponse(Model model) {
        model.addAttribute("message", responseMessage);
        model.addAttribute("code", responseCode);
        return "response";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/submit-vote")
    public String redirectToVote() {
        return "submit-vote";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/submit-vote")
    public String submitToVote(@RequestParam String message, @RequestParam String shortCode) {
        //message - SSS 1
        // short code - 7788
        String[] split = message.split(" ");
        Vote vote = new Vote();
        vote.setShotCode(shortCode);
        vote.setCandidateId(split[1]);

        Response response = restTemplate.postForObject("http://localhost:8080/app-ui/submitVote", vote,Response.class);
        return "redirect:/response";

    }

    @RequestMapping(method = RequestMethod.GET, value = "/single-service-request")
    public String redirectSingleServiceRequest(){
        return "single-service-request";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/single-service-request")
    public String submitSingleServiceRequest(@RequestParam String message, @RequestParam String shortCode, @RequestParam String number){
        ServiceAppMessage serviceAppMessage = new ServiceAppMessage();
        serviceAppMessage.setNumber(number);
        serviceAppMessage.setShortCode(shortCode);
        serviceAppMessage.setMessage(message);

        Response response = restTemplate.postForObject("http://localhost:8080/app-ui/ServiceSubscription", serviceAppMessage, Response.class);
        responseMessage = response.getStatusMessage();
        responseCode = response.getStatusCode();
        return "redirect:/response";
    }

    private BulkSubscriberMessage createBulkSubscriberMessage(int count, String message, String shortCode) {
        BulkSubscriberMessage bulkSubscriberMessage = new BulkSubscriberMessage();

        SubscriberMessage subscriberMessage = new SubscriberMessage();
        subscriberMessage.setApplicationType(AppType.ALERT);
        subscriberMessage.setMessage(message);
        subscriberMessage.setKeyword(null);
        subscriberMessage.setShortCode(shortCode);

        bulkSubscriberMessage.setSubscriberMessage(subscriberMessage);
        List<String> strings = new ArrayList<String>();
        for (int i = 0; i < count; i++) {
            int j = i + 1;
            strings.add("077700000" + j);
        }
        bulkSubscriberMessage.setSubscriberNumbers(strings);
        return bulkSubscriberMessage;
    }

    private ContactMessageList createContactMessageList(int count, String message, String shortCode) {
        List<ContactAppMessage> contactAppMessages = new ArrayList<ContactAppMessage>();
        for (int i = 0; i < count; i++) {
            ContactAppMessage contactAppMessage = new ContactAppMessage();
            int j = i + 1;
            contactAppMessage.setContactNumber("077700000" + j);
            contactAppMessage.setRequestMessage(message);
            contactAppMessage.setShortCode(shortCode);
            contactAppMessages.add(contactAppMessage);
        }
        ContactMessageList contactMessageList = new ContactMessageList();
        contactMessageList.setContactAppMessage(contactAppMessages);
        return contactMessageList;
    }

}
