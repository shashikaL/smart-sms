package com.smartsms.beans;

import java.util.List;

public class VotingApplication extends AbstractApplicationType {

    private List<Candidate> candidateList;

    public List<Candidate> getCandidateList() {
        return candidateList;
    }

    public void setCandidateList(List<Candidate> candidateList) {
        this.candidateList = candidateList;
    }
}
