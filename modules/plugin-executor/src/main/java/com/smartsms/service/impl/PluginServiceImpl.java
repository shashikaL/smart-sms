package com.smartsms.service.impl;


import com.smartsms.beans.AlertApplication;
import com.smartsms.repo.config.ApplicationTypeRepository;
import com.smartsms.reporsitory.PluginRepository;
import com.smartsms.service.ApplicationService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class PluginServiceImpl implements ApplicationService {

    private final static Logger logger = LoggerFactory.getLogger(PluginServiceImpl.class);

    @Autowired
    private ApplicationTypeRepository applicationTypeRepository;

    @Autowired
    private PluginRepository alertAppRepository;

    @Override
    public void execute() {
        logger.info("Going to start the alert app service");
        List<AlertApplication> allAlertApplication = applicationTypeRepository.findAllAlertApplication();
        for (AlertApplication alertApplication : allAlertApplication) {
            alertAppRepository.executePlugin(alertApplication);
        }
    }

}
