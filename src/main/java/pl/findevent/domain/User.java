package pl.findevent.domain;


import org.hibernate.annotations.Table;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Table(appliesTo = "users")
public class User {


    @Id
    @GeneratedValue
    @Column(name = "id_user")
    private String Id;

    @Column(name = "login", nullable = false)
    private String Login;

    @Column(name = "password", nullable = false)
    private String Password;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "surname", nullable = false)
    private String surname;

    @Column(name = "email", nullable = false)
    private String email;

    @Column(name = "phone")
    private String phoneNumber;

    @Column(name = "type", nullable = false)
    private Enum<UserType> userType;

    @Column(name = "isactive", nullable = false)
    private String isActive;


    public User() {
    }


    public String getId() {
        return Id;
    }

    public void setId(String userId) {
        this.Id = userId;
    }

    public String getLogin() {
        return Login;
    }

    public void setLogin(String login) {
        Login = login;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String userName) {
        this.name = userName;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String userSurname) {
        this.surname = userSurname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String userEmail) {
        this.email = userEmail;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String userPhoneNumber) {
        this.phoneNumber = userPhoneNumber;
    }

    public Enum<UserType> getUserType() {
        return userType;
    }

    public void setUserType(Enum<UserType> userType) {
        this.userType = userType;
    }

    public String getIsActive() {
        return isActive;
    }

    public void setIsActive(String userIsActive) {
        this.isActive = userIsActive;
    }
}
