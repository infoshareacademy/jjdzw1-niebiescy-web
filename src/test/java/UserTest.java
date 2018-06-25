import org.junit.jupiter.api.Test;
import pl.findevent.dao.UserDAO;
import pl.findevent.domain.User;
import pl.findevent.domain.UserType;

import static org.junit.jupiter.api.Assertions.*;

class UserTest {

    @Test
    void setUserParameters() {

        User user = new User();

        user.setLogin("UserLogin");
        user.setPassword("UserPassword");
        user.setUserName("User Name");
        user.setUserSurname("User Surname");
        user.setUserPhoneNumber("223456789");
        user.setUserEmail("user@wp.pl");
        user.setUserIsActive("1");
        user.setUserType(UserType.NORMAL);


        assertEquals("UserLogin", user.getLogin());
        assertEquals("UserPassword", user.getPassword());
        assertEquals("User Name", user.getUserName());
        assertEquals("User Surname", user.getUserSurname());
        assertEquals("223456789", user.getUserPhoneNumber());
        assertEquals("user@wp.pl", user.getUserEmail());
        assertEquals("1", user.getUserIsActive());
        assertEquals(UserType.NORMAL, user.getUserType());


    }


}