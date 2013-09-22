package com.smartsms.security;

/**
 * @author rajith
 */
public class ContextHolder {

    private static ContextHolder contextHolder;

    private static String username;

    private ContextHolder(){

    }

    public static ContextHolder getContextHolder(){
        if(contextHolder == null){
            return new ContextHolder();
        }
        return contextHolder;
    }

    public void setContextHolderName(String u){
        username = u;
    }

    public String getUsername(){
        return username;
    }



}
