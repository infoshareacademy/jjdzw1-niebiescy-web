package pl.findevent;

import pl.findevent.dao.UsersDaoBean;
import pl.findevent.domain.User;
import pl.findevent.utils.EmailToUser;
import pl.findevent.utils.EmailToUserBean;

public class Main {

    public static void main(String[] args) {


        EmailToUserBean emailToUserBean = new EmailToUserBean();

        emailToUserBean.send("marek.witkowski.priv@gmail.com","Test maila","Treść maila \n testowego :)");




    }

}
