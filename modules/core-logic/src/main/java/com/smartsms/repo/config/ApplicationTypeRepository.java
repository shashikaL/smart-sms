package com.smartsms.repo.config;


import com.smartsms.beans.*;
import org.bson.types.ObjectId;

import java.util.List;

public interface ApplicationTypeRepository {

    /**
     * Save application
     *
     * @param application
     */
    public void saveApplication(AbstractApplicationType application);

    /**
     * Find application by id
     *
     * @param id
     * @return
     */
    public VotingApplication findVotingApplicationById(String id);

    public List<AlertApplication> findAllAlertApplication();

    public AlertApplication findAlertApplicationByKeyword(Keyword keyword);

    public AlertApplication findAlertApplicationByShortCode(String shortCode);

    public List<ServiceApplication> findAllServiceApplications();

    public List<ServiceApplication> findAllServiceApplicationByUsername(String username);

    public List<AlertApplication> findAllAlertApplicationByUsername(String username);

    public List<VotingApplication> findAllVotingApplicationByUsername(String username);

    public List<ContactApplication> findAllContactApplicationByUsername(String username);

    public void incrementCandidateCount(String candidateId, String appId);

    public VotingApplication findVotingApplicationByShortCode(String shortCode);

//    public void saveContactResponse(ContactResponse response);

    public ContactApplication findContactApplicationByShortCode(String shortCode);

    public ServiceApplication findServiceApplicationByShortCode(String shortCode);

    public List<Keyword> FindAllKeywords();

    public ServiceApplication findServiceApplicationById(String appId);

    public int totalNumberOfVotes(String appId);

    public List<Candidate> totalNumberOfVotesByCandidate(String appId);

    public ContactApplication findContactApplicationById(String appId);

}
