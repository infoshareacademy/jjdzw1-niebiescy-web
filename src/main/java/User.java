import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;

@Getter
@Setter
@Entity
@Table(name = "users")

class User


{
    @Column(name = "id_user")
    String userId;

    @Column(name = "login")
    String Login;

    @Column(name = "password")
    String Password;

    @Column(name = "name")
    String userName;

    @Column(name = "surname")
    String userSurname;

    @Column(name = "email")
    String userEmail;

    @Column(name = "phone")
    String userPhoneNumber;

    @Column(name = "type")
    Enum<UserType> userType;

    @Column(name = "isactive")
    String userIsActive;
}
