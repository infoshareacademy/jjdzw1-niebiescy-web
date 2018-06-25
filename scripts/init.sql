CREATE SCHEMA IF NOT EXISTS niebiescy;

USE niebiescy;

CREATE TABLE IF NOT EXISTS users
(
    id_user int NOT NULL AUTO_INCREMENT,
    login varchar(20) NOT NULL,
    password varchar(255) NOT NULL,
    name varchar(100) NOT NULL,
    surname varchar(100) NOT NULL,
    email varchar(360) NOT NULL,
    phone varchar(12),
    type VARCHAR(10) NOT NULL,
    isactive BOOLEAN DEFAULT 0 NOT NULL,
    CONSTRAINT PK_User PRIMARY KEY (id_user)
);

