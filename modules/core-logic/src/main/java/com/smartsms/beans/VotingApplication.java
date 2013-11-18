package com.smartsms.beans;

import java.util.List;

public class VotingApplication extends AbstractApplicationType {

    private List<Candidate> candidateList;
    private String totalCount;

    public List<Candidate> getCandidateList() {
        return candidateList;
    }

    public void setCandidateList(List<Candidate> candidateList) {
        this.candidateList = candidateList;
    }

    public String getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(String totalCount) {
        this.totalCount = totalCount;
    }
}
