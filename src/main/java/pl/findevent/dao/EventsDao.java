package pl.findevent.dao;

import niebiescyapp.MeteoDataWriter;
import niebiescyapp.MeteoStation;
import pl.findevent.domain.Event;

import javax.ejb.Local;
import javax.ejb.Remote;
import java.util.List;

@Local
public interface EventsDao {

    List<Event> getEventsListFromDB ();
    void saveEventToDb (Event event);
    Event read(int id);
    public void remove(int id);
    List<MeteoStation> getMeteoCollection ();
   // MeteoStation getWheatherFormCity(String city);
}
