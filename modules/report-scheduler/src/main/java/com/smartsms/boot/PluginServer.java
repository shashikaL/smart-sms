package com.smartsms.boot;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class PluginServer {

    private final static Logger logger = LoggerFactory.getLogger(PluginServer.class);

    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("report-scheduler-context.xml");
        logger.info("#######################################################");
        logger.info("##  SMART-SMS Plugin Started Successfully  ##");
        logger.info("#######################################################");
    }
}
