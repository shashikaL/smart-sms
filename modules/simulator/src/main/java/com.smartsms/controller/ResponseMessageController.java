package com.smartsms.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

@Path("/response")
public class ResponseMessageController {

    private final static Logger logger = LoggerFactory.getLogger(ResponseMessageController.class);

    @Produces({"application/json"})
    @GET
    @Path("{message}")
    public void receiveMessage(@PathParam("message") String message) {
        logger.info("=========== Message Received =================");
        logger.info(message);
    }


}
