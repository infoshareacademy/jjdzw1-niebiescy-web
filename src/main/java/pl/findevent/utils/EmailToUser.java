package pl.findevent.utils;

public interface EmailToUser {

    void send(String address, String subject, String content);

}
