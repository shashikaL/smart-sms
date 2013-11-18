package com.smartsms.service.impl;

import com.smartsms.beans.ExecutionType;
import com.smartsms.beans.ServiceApplication;
import com.smartsms.repo.config.ApplicationTypeRepository;
import com.smartsms.service.ServiceApplicationExecute;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.client.RestTemplate;

import java.util.*;

/**
 * Created with IntelliJ IDEA.
 * User: shashi
 * Date: 8/25/13
 * Time: 12:41 PM
 * To change this template use File | Settings | File Templates.
 */
public class ServiceApplicationExecuteImpl implements ServiceApplicationExecute {

    private final static Logger logger = LoggerFactory.getLogger(ServiceApplicationExecuteImpl.class);
    @Value("${simulator.url}")
    private String simulatorUrl;
    @Autowired
    private ApplicationTypeRepository applicationTypeRepository;

    @Override
    public void execute() throws Exception {
        logger.info("Service Application Executor starting");
        List<ServiceApplication> applicationList = applicationTypeRepository.findAllServiceApplications();
        if (applicationList == null || applicationList.size() == 0) {
            logger.info("Not found any service application to execute.");
            return;
        }
        logger.info("Found [{}] number of service application", applicationList.size());
        Map<ServiceApplication, Date> mapList = createDateTime(applicationList);
        logger.info("Create [{}] number of map list with application id and date time", mapList.size());
        for (Map.Entry<ServiceApplication, Date> entry : mapList.entrySet()) {
            if (ExecutionType.SEND.name().equals(entry.getKey().getExecutionType().name())) {
                logger.info("Application execution type is not compatible. So exiting without sending sms for app id : [{}]", entry.getKey().getAppId());
                continue;
            }
            logger.info("Checking application [{}] with current date ", entry.getKey().getAppId());
            Date date = new Date();
            if (date.after(entry.getValue())) {
                logger.info("Application is eligible to execute service. Executing service.... ");
                //TODO this is where service execute
                //send request to simulator
                RestTemplate restTemplate = new RestTemplate();
                restTemplate.getForEntity(simulatorUrl, String.class, entry.getKey().getServiceMessage());
                ServiceApplication application = entry.getKey();
                application.setExecutionType(ExecutionType.SEND);
                applicationTypeRepository.saveApplication(application);
                continue;
            }
            logger.info("Application [{}] will save to cache for future execution", entry.getKey().getAppId());
        }

    }

    private Map<ServiceApplication, Date> createDateTime(List<ServiceApplication> serviceApplications) {
        Map<ServiceApplication, Date> dateMap = new HashMap<ServiceApplication, Date>();
        for (ServiceApplication serviceApplication : serviceApplications) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(Calendar.HOUR_OF_DAY, Integer.parseInt(serviceApplication.getDispatchHour()));
            calendar.set(Calendar.MINUTE, Integer.parseInt(serviceApplication.getDispatchMinute()));
            calendar.set(Calendar.SECOND, 0);
            calendar.set(Calendar.MILLISECOND, 0);
            calendar.set(Calendar.DAY_OF_MONTH, calendar.get(Calendar.DAY_OF_MONTH));
            dateMap.put(serviceApplication, calendar.getTime());
        }
        return dateMap;
    }
}
