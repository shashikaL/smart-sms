package com.smartsms.controller;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

@Path("/response")
public class ResponseMessageController {

    @Produces( { "application/json" } )
    @GET
    @Path("{message}")
    public void receiveMessage(@PathParam("message") String message){
        System.out.println("=========== Service Application Receiver =================");
        System.out.println(message);
    }



}
