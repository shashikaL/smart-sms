package com.smartsms.security;

/**
 * @author rajith
 */
public class SecurityUtil {

    public static String getUserLoggedInname() {
        return ContextHolder.getContextHolder().getUsername();
    }

    public static void cleatAuth() {
        ContextHolder.getContextHolder().setContextHolderName(null);
    }

}
