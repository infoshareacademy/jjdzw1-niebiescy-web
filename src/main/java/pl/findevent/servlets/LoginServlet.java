package pl.findevent.servlets;


import pl.findevent.dao.EventsDao;
import pl.findevent.dao.UsersDao;
import pl.findevent.domain.Event;
import pl.findevent.domain.User;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;
import java.util.stream.Collectors;

import static java.util.stream.Collectors.collectingAndThen;
import static java.util.stream.Collectors.toCollection;
import static java.util.stream.Collectors.toList;

@WebServlet("/LoginServlet")
class LoginServlet extends HttpServlet {

    Logger logger = Logger.getLogger(getClass().getName());

    @Inject
    UsersDao usersDao;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        String redirect;
        String login = req.getParameter("login");
        String password = req.getParameter("password");

        if ((login == null) || (login == "") || (password == null) || password == "") {
            redirect = "/index.jsp";
            RequestDispatcher rd = req.getRequestDispatcher(redirect);
            rd.forward(req, resp);
            return;
        }

        User dbUser = usersDao
                .getUsersListFromDB()
                .stream()
                .filter(d -> d.getLogin().equals(login))
                .findAny()
                .get();


        if (dbUser.getLogin().equals(login) && dbUser.getPassword().equals(password)) {
            logger.info("User " + login + " logged-in successfully");
        } else {
            logger.info("Login failure for user: " + login);
        }

        redirect = "/user.jsp";

        RequestDispatcher rd = req.getRequestDispatcher(redirect);
        rd.forward(req, resp);


    }
}