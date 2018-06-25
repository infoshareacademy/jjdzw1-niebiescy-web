package pl.findevent.dao;


import pl.findevent.domain.User;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import java.util.Optional;


public class UserDAO {


    private EntityManager entityManager =
            Persistence.createEntityManagerFactory("primary").createEntityManager();

    public User save(User user) {

        EntityTransaction transaction = entityManager.getTransaction();

        transaction.begin();

        User result = user;

        if (user.getId() > 0) {
            result = entityManager.merge(user);
        } else {
            entityManager.persist(user);

        }


        transaction.commit();
        return result;

    }


    public User read(int id) {

        return entityManager.find(User.class, id);

    }


    public void remove(int id) {


    }


}
