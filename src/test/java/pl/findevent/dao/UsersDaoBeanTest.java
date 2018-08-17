package pl.findevent.dao;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import pl.findevent.domain.User;
import pl.findevent.domain.UserType;

import static org.junit.jupiter.api.Assertions.assertEquals;


class UsersDaoBeanTest {

    @Test
    @DisplayName("Add user to database.")
    void shouldAddUserToDatabase() {


        // given

        User user = new User();
        UsersDaoBean usersDaoBean = new UsersDaoBean();

        // when

        user.setLogin("AdminLogin");
        user.setPassword("UserPassword");
        user.setName("User Name");
        user.setSurname("User Surname");
        user.setPhoneNumber("223456789");
        user.setEmail("user@wp.pl");
        user.setIsActive(true);
        user.setUserType(UserType.ADMIN);

        //then

        usersDaoBean.saveUserToDb(user);

    }


    @Test
    @DisplayName("Read user from database.")
    void shouldReadUserByIdFromDatabase() {

        // given

        User user;
        UsersDaoBean usersDaoBean = new UsersDaoBean();


        // when

        user =  usersDaoBean.read(100);

        assertEquals("desskone", user.getLogin());


    }






}