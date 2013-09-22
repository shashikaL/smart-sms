package com.smartsms.boot;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class ServiceExecutor {

    private final static Logger logger = LoggerFactory.getLogger(ServiceExecutor.class);

    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("service-scheduler-context.xml");
        logger.info("#######################################################");
        logger.info("##  SMART-SMS Service executor started Successfully  ##");
        logger.info("#######################################################");
    }
}
