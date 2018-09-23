package pl.findevent.servlets.eventsservlets;

import pl.findevent.dao.EventsDao;
import pl.findevent.domain.Event;
import pl.findevent.domain.EventCategory;

import javax.faces.application.Application;
import javax.inject.Inject;
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
import java.util.logging.Logger;

@WebServlet("/addevent")
class EventAddServlet extends HttpServlet
{
    
    final Logger logger = Logger.getLogger(getClass().getName());
    
    @Inject
    EventsDao eventsDao;
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        
        RequestDispatcher rd = req.getRequestDispatcher("addevent.jsp");
        rd.forward(req, resp);
        
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        
        String name = req.getParameter("name");
        String description = req.getParameter("description");
        String start_date = req.getParameter("start_date");
        String finish_date = req.getParameter("finish_date");
        String address = req.getParameter("address");
        String googleMaps = req.getParameter("google_maps");
        String organizer = req.getParameter("organizer");
        String price = req.getParameter("price");
        String tickets = req.getParameter("tickets");
        String category = req.getParameter("category");
        String promote = req.getParameter("promote");
        
        logger.info("Start date podana: " + start_date);
        logger.info("Finish date podana: " + finish_date);
        
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date startDate = null;
        Date finishDate = null;
        try
        {
            startDate = format.parse(start_date);
        }
        catch(ParseException e)
        {
            e.printStackTrace();
        }
        try
        {
            finishDate = format.parse(finish_date);
        }
        catch(ParseException e)
        {
            e.printStackTrace();
        }
        
        logger.info("Start date nowa: " + startDate);
        logger.info("Finish date nowa: " + finishDate);
        
        boolean promoteTranslate;
        
        if(promote.equals("YES"))
        {
            promoteTranslate = true;
        }
        else
        {
            promoteTranslate = false;
        }
        
        //  EventsDaoBean eventsDao = new EventsDaoBean();
        
        Event event = new Event();
        event.setName(name);
        event.setDescription(description);
        event.setStartDate(startDate);
        event.setFinishDate(finishDate);
        event.setAddress(address);
        event.setGoogleMaps(googleMaps);
        event.setOrganizer(Integer.parseInt(organizer));
        event.setPrice(Double.valueOf(price));
        event.setTickets(Integer.parseInt(tickets));
        event.setCategory(EventCategory.valueOf(category));
        event.setPromote(promoteTranslate);
<<<<<<< Updated upstream
        
=======

        Part filePart = req.getPart("image");
        File file;
        try {
            String userPhotosPath;
    
            userPhotosPath  = Application.class.getClassLoader().getResource("/UserPhotos").getPath();
            
            file = imageUpload.uploadImageFile(filePart);
            event.setImageURL(userPhotosPath + file.getName());
        } catch (UserImageNotFoundException userImageNotFound) {
            logger.log(Level.SEVERE, userImageNotFound.getMessage());
        }

>>>>>>> Stashed changes
        eventsDao.saveEventToDb(event);
        
        RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
        rd.forward(req, resp);
        
    }
}