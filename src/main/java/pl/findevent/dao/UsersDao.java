package pl.findevent.dao;

import pl.findevent.domain.User;

import javax.ejb.Local;
import java.util.List;

@Local
public interface UsersDao {

    List<User> getUsersListFromDB();
    void saveUserToDb(User user);

    User read(int id);

    boolean isUniqueLogin(String login);
    void markUserAsInactiveInDb(int id);
}
