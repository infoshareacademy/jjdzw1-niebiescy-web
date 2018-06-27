package pl.findevent;

import pl.findevent.dao.UserDAO;
import pl.findevent.domain.User;

import java.awt.*;

public class Main {

    public static void main(String[] args) {


        UserDAO userDAO = new UserDAO();

        User user = new User();


        user = userDAO.read(1);




    }

}
