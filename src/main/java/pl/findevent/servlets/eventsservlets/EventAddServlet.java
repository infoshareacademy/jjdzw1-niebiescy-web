package pl.findevent.servlets.eventsservlets;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import pl.findevent.dao.EventsDao;
import pl.findevent.domain.Event;
import pl.findevent.domain.EventCategory;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

@WebServlet("/addevent")
@MultipartConfig(maxFileSize = 16177215)
        //max 16 MB
class EventAddServlet extends HttpServlet {

    final Logger logger = Logger.getLogger(getClass().getName());
    private final String UPLOAD_DIRECTORY = "/home/marcin/InfoShare/jjdzw1-niebiescy-web/src/main/resources/Images";

    @Inject
    EventsDao eventsDao;


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RequestDispatcher rd = req.getRequestDispatcher("addevent.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

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



//process only if its multipart content
        if (ServletFileUpload.isMultipartContent(req)) {
            try {
                List<FileItem> multiparts = new ServletFileUpload(
                        new DiskFileItemFactory()).parseRequest(req);

                for (FileItem item : multiparts) {
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        item.write(new File(UPLOAD_DIRECTORY + File.separator + fileName));
                    }
                }

                //File uploaded successfully
                req.setAttribute("message", "File Uploaded Successfully");
            } catch (Exception ex) {
                req.setAttribute("message", "File Upload Failed due to " + ex);
            }

        } else {
            req.setAttribute("message",
                    "Sorry this Servlet only handles file upload request");
        }



        logger.info("Start date podana: " + start_date);
        logger.info("Finish date podana: " + finish_date);

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

        logger.info("Start date nowa: " + startDate);
        logger.info("Finish date nowa: " + finishDate);

        boolean promoteTranslate;

        if (promote.equals("YES")) {
            promoteTranslate = true;
        } else {
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

        eventsDao.saveEventToDb(event);

        RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
        rd.forward(req, resp);

    }


    private String getFileName(final Part part) {
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(
                        content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }


}