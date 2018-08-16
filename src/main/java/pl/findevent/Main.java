package pl.findevent;

import pl.findevent.dao.UsersDaoBean;
import pl.findevent.domain.User;

public class Main {

    public static void main(String[] args) {


        UsersDaoBean usersDaoBean = new UsersDaoBean();

        User user = new User();


        user = usersDaoBean.read(1);




    }

}
