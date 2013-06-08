package com.smartsms.boot;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ReportScheduleServer {

    private final static Logger logger = LoggerFactory.getLogger(ReportScheduleServer.class);

    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("report-scheduler-context.xml");
        logger.info("#######################################################");
        logger.info("##  SMART-SMS Report scheduler Started Successfully  ##");
        logger.info("#######################################################");
    }
}
