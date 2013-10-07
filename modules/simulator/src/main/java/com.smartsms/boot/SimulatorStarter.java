package com.smartsms.boot;


import com.smartsms.controller.AppConfig;
import org.apache.cxf.transport.servlet.CXFServlet;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.servlet.ServletHolder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;

public class SimulatorStarter {

    private final static Logger logger = LoggerFactory.getLogger(SimulatorStarter.class);


    public static void main(String[] args) throws Exception {
        logger.info("======================== Starting Jetty ============================");

        Server server = new Server(9090);
        final ServletHolder servletHolder = new ServletHolder(new CXFServlet());
        final ServletContextHandler context = new ServletContextHandler();
        context.setContextPath("/");
        context.addServlet(servletHolder, "/rest/*");
        context.addEventListener(new ContextLoaderListener());
        context.setInitParameter("contextClass", AnnotationConfigWebApplicationContext.class.getName());
        context.setInitParameter("contextConfigLocation", AppConfig.class.getName());

        server.setHandler(context);
        server.start();
        server.join();


    }

}
