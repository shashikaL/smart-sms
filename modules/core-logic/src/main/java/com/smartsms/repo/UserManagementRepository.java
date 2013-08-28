package com.smartsms.repo;

import com.smartsms.beans.User;

public interface UserManagementRepository {

    public void saveOrUpdateUser(User user);
}
