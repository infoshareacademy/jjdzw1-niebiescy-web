package pl.findevent.dao;

import pl.findevent.domain.Event;
import pl.findevent.domain.User;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import java.util.ArrayList;
import java.util.List;

@Stateless
public class EventsDaoBean implements EventsDao {

    private List<Event> eventList = new ArrayList<>();
    private static final EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("primary");

    public List<Event> getEvents() {
        return eventList;
    }

    public void setEvents(List<Event> events) {
        this.eventList = events;
    }

    @Override
    public List<Event> getEventsListFromDB() {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();
        entityTransaction.begin();
        eventList = entityManager.createQuery("FROM Event order by id desc").getResultList();
entityManager.close();
        return eventList;
    }

    @Override
    public void saveEventToDb(Event event) {

        EntityManager entityManager = entityManagerFactory.createEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.persist(event);
        transaction.commit();
        entityManager.close();

    }

    @Override
    public Event read(int id) {

        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Event event = entityManager.find(Event.class, id);
        return event;

    }


    public void remove(int id) {


    }

    public EventsDaoBean() {
        // required for JPA
    }
}