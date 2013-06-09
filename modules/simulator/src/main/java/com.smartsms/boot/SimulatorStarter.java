package com.smartsms.boot;


import com.smartsms.beans.Response;
import com.smartsms.beans.SubscriberMessage;
import com.smartsms.beans.util.AppType;
import com.smartsms.rest.SimulatorRestConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.client.RestTemplate;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class SimulatorStarter {

    private final static Logger logger = LoggerFactory.getLogger(SimulatorStarter.class);

    private static RestTemplate restTemplate;


    public static void main(String[] args) throws IOException {
        restTemplate = SimulatorRestConfig.restTemplate();
        logger.info("================== Starting Simulator ==================");
        logger.info("================== Simulator Stared ===================");

        BufferedReader dataIn = new BufferedReader(new InputStreamReader(System.in));

        logger.info("Enter Your Phone Number   : ");
        String phoneNo = dataIn.readLine();

        logger.info("============ Select Application Type ================");
        logger.info("------------ 1- Alert Application -------------------");
        logger.info("------------ 2- Service Application -----------------");
        logger.info("------------ 3- Voting  Application -----------------");
        logger.info("------------ 4- Contact Application -----------------");
        String appType = dataIn.readLine();

        logger.info("Enter message : ");
        String regMsg = dataIn.readLine();

        logger.info("Enter Short Code: ");
        String shortCode = dataIn.readLine();

        SubscriberMessage subscriberMessage = null;
        if (appType.equals("1")) {
            subscriberMessage = createSubscriberMessage(AppType.ALERT, regMsg, shortCode, null);
        }

        if (subscriberMessage == null) {
            return;
        }
        Response response = restTemplate.postForObject("http://localhost:8080/app-ui/subscribe/{subscriberNumber}", subscriberMessage, Response.class, phoneNo);
        logger.info("======================== Response ============================");
        logger.info("Status Code = [{}]", response.getStatusCode());
        logger.info("Status Message = [{}]", response.getStatusMessage());


    }

    private static SubscriberMessage createSubscriberMessage(AppType appType, String message, String shortCode, String keyword) {
        SubscriberMessage subscriberMessage = new SubscriberMessage();
        subscriberMessage.setApplicationType(appType);
        subscriberMessage.setKeyword(keyword);
        subscriberMessage.setMessage(message);
        subscriberMessage.setShortCode(shortCode);
        return subscriberMessage;
    }


}
