package pl.findevent.dao;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import pl.findevent.dao.UserDAO;
import pl.findevent.domain.User;
import pl.findevent.domain.UserType;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;


class UserDAOTest {

    @Test
    @DisplayName("Add user to database.")
    void shouldAddUserToDatabase() {


        // given

        User user = new User();
        UserDAO userDAO = new UserDAO();

        // when

        user.setLogin("UserLogin");
        user.setPassword("UserPassword");
        user.setName("User Name");
        user.setSurname("User Surname");
        user.setPhoneNumber("223456789");
        user.setEmail("user@wp.pl");
        user.setIsActive(true);
        user.setUserType(UserType.NORMAL);

        //then

        userDAO.save(user);

    }


    @Test
    @DisplayName("Read user from database.")
    void shouldReadUserByIdFromDatabase() {

        // given

        User user;
        UserDAO userDAO = new UserDAO();


        // when

        user = userDAO.read(3);

        assertEquals("UserLogin", user.getLogin());


    }


}