package pl.findevent.dao;

import pl.findevent.domain.Event;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class EventDAO {

    private EntityManager entityManager =
            Persistence.createEntityManagerFactory("primary").createEntityManager();


    public Event save(Event event) {

        EntityTransaction transaction = entityManager.getTransaction();

        transaction.begin();

        Event result = event;

        if (event.getId() > 0) {
            result = entityManager.merge(event);
        } else {
            entityManager.persist(event);

        }


        transaction.commit();
        return result;

    }


    public Event read(int id) {

        return entityManager.find(Event.class, id);

    }


    public void remove(int id) {


    }


}
