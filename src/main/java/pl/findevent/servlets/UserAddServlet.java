package pl.findevent.servlets;


import pl.findevent.dao.UsersDao;
import pl.findevent.dao.UsersDaoBean;
import pl.findevent.domain.User;
import pl.findevent.domain.UserType;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet("/UserAddServlet")
class UserAddServlet extends HttpServlet {

    Logger logger = Logger.getLogger(getClass().getName());

    @Inject
    UsersDao usersDao;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RequestDispatcher rd = req.getRequestDispatcher("/user-add.html");
        rd.forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String login = req.getParameter("login");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String type = req.getParameter("type");
        String isactive = req.getParameter("isactive");

        boolean isactiveTranslate;

        if (isactive.equals("YES")) {
            isactiveTranslate = true;
        }
        else {
            isactiveTranslate = false;
        }

        User user = new User();
        user.setLogin(login);
        user.setPassword(password);
        user.setName(name);
        user.setSurname(surname);
        user.setEmail(email);
        user.setPhoneNumber(phone);
        user.setUserType(UserType.valueOf(type));
        user.setIsActive(isactiveTranslate);

        usersDao.saveUserToDb(user);


        RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
        rd.forward(req, resp);


    }
}