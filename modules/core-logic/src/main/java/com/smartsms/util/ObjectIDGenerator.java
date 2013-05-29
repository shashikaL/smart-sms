package com.smartsms.util;


import org.bson.types.ObjectId;

public class ObjectIDGenerator {

    public static ObjectId getObjectID() {
        return ObjectId.get();
    }
}
