package pl.findevent.servlets;


import pl.findevent.dao.EventsDaoBean;
import pl.findevent.dao.UsersDaoBean;
import pl.findevent.domain.Event;
import pl.findevent.domain.User;
import pl.findevent.domain.UserType;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.logging.Logger;

@WebServlet("/EventAddServlet")
class EventAddServlet extends HttpServlet {

    Logger logger = Logger.getLogger(getClass().getName());

    //  @Inject
    //  UsersDaoBean usersDaoBean;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RequestDispatcher rd = req.getRequestDispatcher("/user-add.html");
        rd.forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");
        String description = req.getParameter("description");
        String start_date = req.getParameter("start_date");
        String finish_date = req.getParameter("finish_date");
        String address = req.getParameter("address");
        String google_maps = req.getParameter("google_maps");
        String organizer = req.getParameter("organizer");
        String price = req.getParameter("price");
        String tickets = req.getParameter("tickets");

        System.out.println("Start date podana: "+start_date);
        System.out.println("Finish date podana: "+finish_date);

        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date startDate = null;
        Date finishDate = null;
        try {
            startDate = format.parse(start_date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        try {
            finishDate = format.parse(finish_date);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        System.out.println("Start date nowa: "+startDate);
        System.out.println("Finish date nowa: "+finishDate);


        EventsDaoBean eventsDaoBean = new EventsDaoBean();

        Event event = new Event();
        event.setName(name);
        event.setDescription(description);

        event.setStartDate(startDate);
        event.setFinishDate(finishDate);
        event.setAddress(address);
        event.setGoogleMaps(google_maps);
        event.setOrganizer(Integer.parseInt(organizer));
        event.setPrice(Double.valueOf(price));
        event.setTickets(Integer.parseInt(tickets));

        eventsDaoBean.saveEventToDb(event);


        RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
        rd.forward(req, resp);


    }
}