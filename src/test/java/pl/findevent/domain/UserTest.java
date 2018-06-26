package pl.findevent.domain;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import pl.findevent.domain.User;
import pl.findevent.domain.UserType;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

class UserTest {

    @Test
    @DisplayName("User class - set parameters.")
    void setUserParameters() {

        // given

        User user = new User();

        // when

        user.setLogin("UserLogin");
        user.setPassword("UserPassword");
        user.setName("User Name");
        user.setSurname("User Surname");
        user.setPhoneNumber("223456789");
        user.setEmail("user@wp.pl");
        user.setIsActive(true);
        user.setUserType(UserType.NORMAL);

        // then

        assertEquals("UserLogin", user.getLogin(), "Login - fail");
        assertEquals("UserPassword", user.getPassword(), "Password - fail");
        assertEquals("User Name", user.getName(),"Username - fail") ;
        assertEquals("User Surname", user.getSurname(), "User surname - fail");
        assertEquals("223456789", user.getPhoneNumber(), "Phone number - fail");
        assertEquals("user@wp.pl", user.getEmail(), "Email - fail");
        assertTrue(user.getIsActive(),"Is active - fail");
        assertEquals(UserType.NORMAL, user.getUserType(),"User type - fail");


    }


}