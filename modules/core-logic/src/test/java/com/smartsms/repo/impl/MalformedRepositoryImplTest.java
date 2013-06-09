package com.smartsms.repo.impl;

import com.smartsms.beans.Malformed;
import com.smartsms.repo.config.MalformedRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

/**
 * @author rajith
 */
@ContextConfiguration(locations = "classpath*:test-core-logic-context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class MalformedRepositoryImplTest {

    @Autowired
    private MalformedRepository malformedRepository;

    @Test
    public void testSaveMalformed() throws Exception {
        malformedRepository.saveMalformed(createMalFormed());
    }

    private Malformed createMalFormed(){
        Malformed malformed = new Malformed();
        List<String> strings = new ArrayList<String>();
        strings.add("ABC");
        strings.add("XYZ");
        malformed.setMalformedKeyword(strings);
        return malformed;
    }
}
