package com.smartsms.security;

import org.apache.commons.lang.StringUtils;
import org.springframework.security.authentication.AuthenticationCredentialsNotFoundException;
import org.springframework.web.filter.GenericFilterBean;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

/**
 * @author rajith
 */
public class AuthenticationFilter extends GenericFilterBean {

    private List<String> ignoreUrls;

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
//        HttpServletRequest request = (HttpServletRequest) servletRequest;
//        String url = request.getRequestURI();
//        if (isUrlExists(url)) {
//            chain.doFilter(servletRequest, servletResponse);
//            return;
//        }
//
//        String username = SecurityUtil.getUserLoggedInname();
//        if (username != null) {
//            chain.doFilter(servletRequest, servletResponse);
//            return;
//        }
//        throw new AuthenticationCredentialsNotFoundException("Authentication not found");

//        System.out.println("========================" + SecurityUtil.getUserLoggedInname());
        chain.doFilter(servletRequest,servletResponse);

    }

    private boolean isUrlExists(String url) {
        if(StringUtils.isBlank(url)){
            return false;
        }
        for (String s : ignoreUrls) {
            if (url.contains(s)) {
                return true;
            }
        }
        return false;
    }

    public void setIgnoreUrls(List<String> ignoreUrls) {
        this.ignoreUrls = ignoreUrls;
    }
}
