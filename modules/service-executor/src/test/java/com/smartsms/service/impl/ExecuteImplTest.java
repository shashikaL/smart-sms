package com.smartsms.service.impl;

import com.smartsms.service.ServiceApplicationExecute;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:service-scheduler-context-test.xml"})
public class ExecuteImplTest {

    @Autowired
    private ServiceApplicationExecute execute;

    @Test
    public void testExecute() throws Exception {
        execute.execute();
    }
}
