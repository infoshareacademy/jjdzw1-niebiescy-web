package pl.findevent.servlets;


import pl.findevent.dao.UsersDao;
import pl.findevent.domain.User;
import pl.findevent.domain.UserType;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet("/UserEditServlet")
class UserEditServlet extends HttpServlet {

    Logger logger = Logger.getLogger(getClass().getName());

    @Inject
    UsersDao usersDao;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        //pobierz i ustaw parametry type z adresu. ustaw ten parametr dla sesji aby widzial go tez post
        String id = req.getParameter("id");
        req.setAttribute("id", id);
        req.getSession().setAttribute("id", id);

        // znajdz usera po id ktore bylo podane w pasku
        // ten user bedzie wykorzystany aby wyswietlic jego dane w formularzu (value=${user.getName()}

        User user = usersDao.read(Integer.parseInt(id));
        // aby formularz widział usera, rowniez dla sesji przy przełączaniu pomiedzy stronami

        req.setAttribute("user", user);
        req.getSession().setAttribute("user", user);

        RequestDispatcher rd = req.getRequestDispatcher("editUser.jsp");
        rd.forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        HttpSession session = req.getSession();

        String idUser = String.valueOf(req.getSession().getAttribute("id"));
        logger.info("Id w post to: "+idUser);
        String login = req.getParameter("login");
        req.getSession().setAttribute("login", login);


        User user = usersDao.read(Integer.parseInt(idUser));
        user.setLogin((String) req.getSession().getAttribute("login"));

       // usersDao.saveUserToDb(user);
        logger.info("User: " + login + " successfully updated");
        logger.info("przekierowanie");

        RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
        logger.info("usuniecie sesij");
        session.invalidate();
        logger.info("po usunieciu");
        rd.forward(req, resp);


    }
}