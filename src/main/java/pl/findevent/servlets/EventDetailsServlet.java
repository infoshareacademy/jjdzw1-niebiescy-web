package pl.findevent.servlets;


import pl.findevent.dao.EventsDao;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet("/EventDetails")
class EventDetailsServlet extends HttpServlet {

    Logger logger = Logger.getLogger(getClass().getName());

    @Inject
    EventsDao eventsDao;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        String redirect = null;
        String eventID = req.getAttribute("eventid").toString();

        if ((eventID == null) || (eventID == "")) {
            redirect = "/index.jsp";
        } else {
            redirect = "/EventDetails.jsp";
        }


        RequestDispatcher rd = req.getRequestDispatcher(redirect);
        rd.forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
        rd.forward(req, resp);


    }
}