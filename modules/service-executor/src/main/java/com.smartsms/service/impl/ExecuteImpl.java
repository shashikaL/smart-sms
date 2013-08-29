package com.smartsms.service.impl;

import com.smartsms.beans.ServiceApplication;
import com.smartsms.repo.config.ApplicationTypeRepository;
import com.smartsms.service.Execute;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: shashi
 * Date: 8/25/13
 * Time: 12:41 PM
 * To change this template use File | Settings | File Templates.
 */
public class ExecuteImpl implements Execute {

    @Autowired
    private ApplicationTypeRepository applicationTypeRepository;

    @Override
    public void execute() {
        System.out.println("Service App Executor Starting");
        List<ServiceApplication> applicationList = applicationTypeRepository.findAllServiceApplications();



    }
}
