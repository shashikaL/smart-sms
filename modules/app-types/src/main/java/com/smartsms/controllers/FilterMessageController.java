package com.smartsms.controllers;


import com.smartsms.beans.FilterMessage;
import com.smartsms.beans.FilterRejectedMessage;
import com.smartsms.beans.Malformed;
import com.smartsms.beans.Response;
import com.smartsms.repo.config.MalformedRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@Controller
public class FilterMessageController {

    @Autowired
    private MalformedRepository malformedRepository;

    @Autowired
    private RestTemplate restTemplate;

    @Value("${simulator.url}")
    private String simulatorUrl;

    @RequestMapping(value = "/filter", method = RequestMethod.POST)
    public String redirect(@RequestBody FilterMessage filterMessage) {

        String message = filterMessage.getMessage();

        String[] splittedArray = message.split("\\W+");

        if (isMalFormedContentExists(splittedArray)) {
            FilterRejectedMessage filterRejectedMessage = new FilterRejectedMessage();
            filterRejectedMessage.setMessage(filterMessage.getMessage());
            filterRejectedMessage.setApplicationId(filterMessage.getAppId());
            filterRejectedMessage.setApplicationUser("");

            return "Message Temporally Blocked.Please try again later";
        }

        try {
            restTemplate.getForObject(simulatorUrl, String.class, filterMessage.getMessage());

        } catch (Throwable e) {
            System.out.println(e.getMessage());
        }

        return "SUCCESS";
    }

    private boolean isMalFormedContentExists(String[] splittedArray) {
        List<Malformed> allMalformed = malformedRepository.findAllMalformed();
            for (Malformed malformed : allMalformed) {
                List<String> strings = malformed.getMalformedKeyword();
                for (String str : splittedArray) {
                    if (strings.contains(str)) {
                        return true;
                    }
                }
        }
        return false;
    }

    private Response createResponse(String code, String message) {
        Response response = new Response();
        response.setStatusCode(code);
        response.setStatusMessage(message);
        return response;
    }
}
