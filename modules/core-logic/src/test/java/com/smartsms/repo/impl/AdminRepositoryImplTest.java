package com.smartsms.repo.impl;

/**
 * Created with IntelliJ IDEA.
 * User: snej
 * Date: 8/25/13
 * Time: 11:57 AM
 * To change this template use File | Settings | File Templates.
 */

import com.smartsms.beans.FilterRejectedMessage;
import com.smartsms.repo.impl.AdminRepositoryImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;


@ContextConfiguration(locations = "classpath*:test-core-logic-context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class AdminRepositoryImplTest {

    @Autowired
    private AdminRepositoryImpl adminRepository;

    @Test
    public void testSaveFiltered() throws Exception {
        adminRepository.saveFilterRejectedMessages(createFilterRejectedMessage());
    }

    private FilterRejectedMessage createFilterRejectedMessage() {
        FilterRejectedMessage filterRejectedMessage = new FilterRejectedMessage();
        filterRejectedMessage.setApplicationId(UUID.randomUUID().toString());
        filterRejectedMessage.setApplicationName("App2");
        filterRejectedMessage.setApplicationUser("user4");
        filterRejectedMessage.setMessage("Sample Text message 4 ");
        return filterRejectedMessage;
    }
}
