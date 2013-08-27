package com.smartsms.boot;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created with IntelliJ IDEA.
 * User: shashi
 * Date: 8/25/13
 * Time: 11:59 AM
 * To change this template use File | Settings | File Templates.
 */
public class ServiceExecutor {

    private final static Logger logger = LoggerFactory.getLogger(ServiceExecutor.class);

    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("service-scheduler-context.xml");
        logger.info("#######################################################");
        logger.info("##  SMART-SMS Service executor started Successfully  ##");
        logger.info("#######################################################");
    }
}
