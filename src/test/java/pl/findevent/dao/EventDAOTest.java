    package pl.findevent.dao;

    import org.junit.jupiter.api.Test;
    import pl.findevent.domain.Event;

    import java.text.DateFormat;
    import java.util.Date;

class EventDAOTest {

    @Test
    void save() {

        // given

        Event event = new Event();
        EventDAO eventDAO = new EventDAO();

        //when

        event.setName("Event short name");
        event.setDescription("Event veeeeeeeery looooooooooong naaaaaaaaaame");
        event.setAddress("pl. Unii Lubelskiej, Warszawa");
//        event.setStartDate(Date.from());
//        event.setFinishDate(Date.);
        event.setGoogleMaps("");
        event.setPrice(100.0);
        event.setTickets(200);
        event.setOrganizer(1);

        // then


    }
}