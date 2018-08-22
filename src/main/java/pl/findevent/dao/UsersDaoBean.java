package pl.findevent.dao;

import pl.findevent.domain.User;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

@Stateless
public class UsersDaoBean implements UsersDao {

    private List<User> userList = new ArrayList<>();
    private static final EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("primary");

    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    Logger logger = Logger.getLogger(getClass().getName());

    @Override
    public List<User> getUsersListFromDB() {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        EntityTransaction entityTransaction = entityManager.getTransaction();
        entityTransaction.begin();
        userList = entityManager.createQuery("FROM User ").getResultList();

        return userList;
    }

    @Override
    public void saveUserToDb(User user) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.persist(user);
        transaction.commit();
        entityManager.close();
    }

    @Override
    public User read(int id) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        User user = entityManager.find(User.class, id);
        return user;

    }

    @Override
    public void remove(int id) {

    }


    @Override
    public boolean isUniqueLogin(String login) {

        return this.getUsersListFromDB()
                .stream()
                .anyMatch(t -> t.getLogin().equals(login));


    }

    public UsersDaoBean() {
        // required for JPA
    }

}
