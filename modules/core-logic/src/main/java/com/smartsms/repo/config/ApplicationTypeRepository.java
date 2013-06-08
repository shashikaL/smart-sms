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
    public VotingApplication findVotingApplicationById(ObjectId id);

    public List<AlertApplication> findAllAlertApplication();


}
