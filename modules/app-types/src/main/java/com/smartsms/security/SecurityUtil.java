package com.smartsms.security;

/**
 * @author shashi
 */
public class SecurityUtil {

    public static String getUserLoggedInname() {
        return ContextHolder.getContextHolder().getUsername();
    }

    public static void cleatAuth() {
        ContextHolder.getContextHolder().setContextHolderName(null);
    }

}
