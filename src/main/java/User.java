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

    @Column(name = "login", nullable = false)
    String Login;

    @Column(name = "password", nullable = false)
    String Password;

    @Column(name = "name", nullable = false)
    String userName;

    @Column(name = "surname", nullable = false)
    String userSurname;

    @Column(name = "email", nullable = false)
    String userEmail;

    @Column(name = "phone")
    String userPhoneNumber;

    @Column(name = "type", nullable = false)
    Enum<UserType> userType;

    @Column(name = "isactive", nullable = false)
    String userIsActive;
}
