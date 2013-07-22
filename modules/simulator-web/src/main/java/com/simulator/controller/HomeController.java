package com.simulator.controller;

import com.smartsms.beans.BulkSubscriberMessage;
import com.smartsms.beans.Response;
import com.smartsms.beans.SubscriberMessage;
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

    @RequestMapping(method = RequestMethod.POST, value = "/bulk-alert")
    public String submitBulkAlert(@RequestParam Integer count, @RequestParam String message, @RequestParam String shortCode) {
        BulkSubscriberMessage bulkSubscriberMessage = createBulkSubscriberMessage(count,message,shortCode);
        Response response = restTemplate.postForObject("http://localhost:8080/app-ui/bulk/subscribe", bulkSubscriberMessage, Response.class);
        responseMessage = response.getStatusMessage();
        return "redirect:/response";

    }

    @RequestMapping(method = RequestMethod.GET, value = "/response")
    public String redirectToResponse(Model model){
        model.addAttribute("message", responseMessage);
        return "response";
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
            int j = i+1;
            strings.add("077700000"+j);
        }
        bulkSubscriberMessage.setSubscriberNumbers(strings);
        return bulkSubscriberMessage;
    }

}
