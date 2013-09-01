package com.smartsms.repo;


import com.smartsms.beans.Subscribe;

public interface SubscriberRepository {

    public void saveSubscriber(Subscribe subscribe);

    public Subscribe findSubscriber(String unSubscriberNumber);
}
