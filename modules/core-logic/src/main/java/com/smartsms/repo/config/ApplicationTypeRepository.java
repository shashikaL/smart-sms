package com.smartsms.repo.config;


import com.smartsms.beans.*;
import org.bson.types.ObjectId;

import java.util.List;

public interface ApplicationTypeRepository {

    /**
     * Save application
     * @param application
     */
    public void saveApplication(AbstractApplicationType application);

    /**
     * Find application by id
     * @param id
     * @return
     */
    public VotingApplication findVotingApplicationById(String id);

    public List<AlertApplication> findAllAlertApplication();

    public AlertApplication findAlertApplicationByKeyword(Keyword keyword);

    public AlertApplication findAlertApplicationByShortCode(String shortCode);

    public void saveKeyword(Keyword keyword);

    public List<ContactApplication> findAllContactApplications();



}
