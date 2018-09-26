package pl.findevent.dao;

import pl.findevent.domain.Event;
import pl.findevent.domain.User;

import javax.ejb.Local;
import java.util.List;

@Local
public interface EventsDao {

    List<Event> getNextFivePromotedEventsFromDB();
    List<Event> getEventsListFromDB ();
    List<Event> getFindedEventsFromDB(String searchString);
    void saveEventToDb (Event event);
    Event read(int id);
    void modifyEventDb(Event event);
    void markEventAsActiveInDb(int id);
    void markEventAsInactiveInDb(int id);
}
