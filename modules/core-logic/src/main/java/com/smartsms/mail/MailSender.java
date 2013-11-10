package com.smartsms.mail;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

@Service
public class MailSender {

    private static final String MAIL_SMTP_AUTH_KEY = "mail.smtp.auth";
    private static final String MAIL_SMTP_STARTTLS_KEY = "mail.smtp.starttls.enable";
    private static final String MAIL_SMTP_HOST_KEY = "mail.smtp.host";
    private static final String MAIL_SMTP_PORT_KEY = "mail.smtp.port";
    @Autowired
    private MailBodyCreator mailBodyCreator;

    public void sendSyncFailureAlertEmail(String emailAddress, String applicationId) throws Exception {
        String requestBody = mailBodyCreator.generateEmailForApplicationSuspend(emailAddress, applicationId);
        doSendMail(requestBody, emailAddress);
    }

    private void doSendMail(String body, String toEmail) throws MessagingException {
        Properties props = new Properties();
        props.put(MAIL_SMTP_AUTH_KEY, "true");
        props.put(MAIL_SMTP_STARTTLS_KEY, "true");
        props.put(MAIL_SMTP_HOST_KEY, "smtp.gmail.com");
        props.put(MAIL_SMTP_PORT_KEY, "587");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication("smartsmsalert@gmail.com", "shachahastha");
                    }
                });

        try {
            Message mimeMessage = new MimeMessage(session);
            mimeMessage.setFrom(new InternetAddress("smartsmsalert@gmail.com"));
            mimeMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            mimeMessage.setSubject("Email Alert from Smart SMS");
            mimeMessage.setText(body);
            Transport.send(mimeMessage);
        } catch (MessagingException e) {
            throw e;
        }
    }


}
