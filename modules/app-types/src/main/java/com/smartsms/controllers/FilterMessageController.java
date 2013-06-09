package com.smartsms.controllers;


import com.smartsms.beans.FilterMessage;
import com.smartsms.beans.Malformed;
import com.smartsms.beans.Response;
import com.smartsms.repo.config.MalformedRepository;
import org.springframework.beans.factory.annotation.Autowired;
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

    @RequestMapping(value = "/filter", method = RequestMethod.POST)
    public String redirect(@RequestBody FilterMessage filterMessage) {

        String message = filterMessage.getMessage();

        String[] splittedArray = message.split("\\W+");

        if (isMalFormedContentExists(splittedArray)) {
            //save in admin
            return "Message Temporally Blocked.Please try again later";
        }

        try {
            restTemplate.getForObject("http://localhost:9090/rest/api/response/{message}", String.class, filterMessage.getMessage());

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
