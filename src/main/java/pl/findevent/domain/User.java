package pl.findevent.domain;

import javax.persistence.*;


@Entity
@Table(name = "users")
public class User {


    @Id
    @Column(name = "id_user", unique = true, nullable = false)
    private int id;

    @Column(name = "login", nullable = false)
    private String login;

    @Column(name = "password", nullable = false)
    private String password;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "surname", nullable = false)
    private String surname;

    @Column(name = "email", nullable = false)
    private String email;

    @Column(name = "phone")
    private String phoneNumber;

    @Column(name = "type", nullable = false)
    @Enumerated(EnumType.STRING)
    private Enum<UserType> userType;

    @Column(name = "isactive", nullable = false)
    private boolean isActive;


    public User() {
    }

    public User(String login, String password, String name, String surname, String email, String phoneNumber, Enum<UserType> userType, boolean isActive) {

        this.login = login;
        this.password = password;
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.userType = userType;
        this.isActive = isActive;
    }

    public int getId() {
        return id;
    }

    public void setId(int userId) {
        this.id = userId;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public void setUserType(UserType userType) {
        this.userType = userType;
    }

    public boolean getIsActive() {
        return isActive;
    }

    public void setIsActive(boolean userIsActive) {
        this.isActive = userIsActive;
    }
}
