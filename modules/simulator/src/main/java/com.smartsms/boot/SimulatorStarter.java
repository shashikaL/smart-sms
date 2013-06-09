package com.smartsms.boot;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class SimulatorStarter {

    private final static Logger logger = LoggerFactory.getLogger(SimulatorStarter.class);

    public static void main(String[] args) throws IOException {
        logger.info("================== Starting Simulator ==================");
        logger.info("================== Simulator Stared ===================");

        BufferedReader dataIn = new BufferedReader( new InputStreamReader(System.in) );

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
    }
}
