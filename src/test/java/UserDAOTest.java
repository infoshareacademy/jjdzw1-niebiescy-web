import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import pl.findevent.dao.UserDAO;
import pl.findevent.domain.User;
import pl.findevent.domain.UserType;


class UserDAOTest {

    @Test
    @DisplayName("Add user to database.")
    void add() {


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

        userDAO.save(user);


        //then

    }





}