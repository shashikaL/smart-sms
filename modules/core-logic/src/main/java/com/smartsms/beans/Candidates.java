package com.smartsms.beans;

import org.springframework.util.AutoPopulatingList;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Sony
 * Date: 22/09/13
 * Time: 12:02 PM
 * To change this template use File | Settings | File Templates.
 */
public class Candidates {

    private List<Candidate> candidateList = new AutoPopulatingList<Candidate>(Candidate.class);;

    public void setCandidateList(List<Candidate> candidateList) {
        this.candidateList = candidateList;
    }

    public List<Candidate> getCandidateList() {
        return candidateList;
    }
}
