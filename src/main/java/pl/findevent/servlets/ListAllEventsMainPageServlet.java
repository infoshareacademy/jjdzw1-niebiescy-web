package pl.findevent.servlets;


import niebiescyapp.MeteoStation;
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

@WebServlet("/ListAllEventsMainPageServlet")


public class ListAllEventsMainPageServlet extends HttpServlet {

    @Inject
    EventsDao eventsDao;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        List<Event> listOfEventsMainPage = eventsDao.getEventsListFromDB();
     //   List<MeteoStation> listOfMeteoStation = eventsDao.getMeteoCollection();
        System.out.println("Pierwszy adres: "+listOfEventsMainPage.get(1).getAddress());
     //   System.out.println("Age: "+listOfUsers.get(1).getAge());
        request.setAttribute("listOfEventsMainPage", listOfEventsMainPage);
     //   request.setAttribute("listOfMeteoStation", listOfMeteoStation);
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);

    }

    public ListAllEventsMainPageServlet() {
    }
}
