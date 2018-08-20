package pl.findevent.servlets;


import pl.findevent.dao.EventsDao;
import pl.findevent.domain.Event;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ListAllEventsAdminServlet")


public class ListAllEventsAdminServlet extends HttpServlet {

    @Inject
    EventsDao eventsDao;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        List<Event> listOfEvents = eventsDao.getEventsListFromDB();
        System.out.println("Pierwszy adres: "+listOfEvents.get(1).getAddress());
     //   System.out.println("Age: "+listOfUsers.get(1).getAge());
        request.setAttribute("listOfEvents", listOfEvents);
        RequestDispatcher rd = request.getRequestDispatcher("ListAllEventsAdmin.jsp");
        rd.forward(request, response);

    }

    public ListAllEventsAdminServlet() {
    }
}
