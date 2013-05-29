package com.smartsms.repo.config;


import com.smartsms.beans.*;
import org.bson.types.ObjectId;

public interface ApplicationTypeRepository {

    public void saveApplication(AbstractApplicationType application);

    public VotingApplication findVotingApplicationById(ObjectId id);

}
