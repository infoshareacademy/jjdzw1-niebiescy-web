package pl.findevent.dao;

import pl.findevent.domain.Event;

import javax.ejb.Local;
import java.util.List;

@Local
public interface EventsDao {

    List<Event> getNextFivePromotedEventsFromDB();
    List<Event> getEventsListFromDB ();
    void saveEventToDb (Event event);
    Event read(int id);
    public void remove(int id);
}
