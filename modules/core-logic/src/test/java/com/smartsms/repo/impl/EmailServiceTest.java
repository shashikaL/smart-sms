package com.smartsms.repo.impl;

import com.smartsms.mail.MailSender;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@ContextConfiguration(locations = "classpath*:test-core-logic-context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class EmailServiceTest {

    @Autowired
    private MailSender mailSender;

    @Test
    public void testEmail() throws Exception {
//        mailSender.sendSyncFailureAlertEmail("rajithgama@gmail.com","111");


    }
}
