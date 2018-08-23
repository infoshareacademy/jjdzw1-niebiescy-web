package pl.findevent.utils;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.Email;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

import java.util.logging.Logger;

public class EmailToUserBean implements EmailToUser {


    Logger logger = Logger.getLogger(getClass().getName());

    @Override
    public void send(String address, String subject, String content)   {


        try {

            Email email = new SimpleEmail();
            email.setHostName("smtp.googlemail.com");
            email.setSmtpPort(465);
            email.setAuthenticator(new DefaultAuthenticator("username", "password"));
            email.setSSLOnConnect(true);
            email.setFrom("user@gmail.com");
            email.setSubject(subject);
            email.setMsg(content);
            email.addTo(address);
            email.send();

        } catch (EmailException e) {

            logger.warning("Nie udało się wysłać maila:".concat(address));



        }



    }
}
