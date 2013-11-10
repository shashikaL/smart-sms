package com.smartsms.mail;


import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.exception.VelocityException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.springframework.ui.velocity.VelocityEngineUtils.mergeTemplateIntoString;

@Service
public class MailBodyCreator {

    private static final String EMAIL_ALERT_SUSPEND = "Email.Alert.app.suspend.vm";

    @Autowired
    private VelocityEngine velocityEngine;

    public String generateEmailForApplicationSuspend(String emailAddress, String applicationName) throws Exception {
        Map<String, Object> model = new HashMap<String, Object>();
        List<String> recepients = new ArrayList<String>();
        recepients.add(emailAddress);
        model.put("applicationName", applicationName);
        model.put("recipients", recepients);
        return doGenerate(model, EMAIL_ALERT_SUSPEND);

    }

    private String doGenerate(Map<String, Object> model, String templateName) throws Exception {
        try {
            return mergeTemplateIntoString(velocityEngine, templateName, "UTF-8", model);
        } catch (VelocityException e) {
            throw new Exception("Email Exception", e);
        }
    }

}
