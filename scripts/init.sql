DROP DATABASE niebiescy;

CREATE DATABASE niebiescy;

USE niebiescy;

CREATE TABLE users
(
    id_iser int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    login varchar(20) NOT NULL,
    password varchar(255) NOT NULL,
    name varchar(100) NOT NULL,
    surname varchar(100) NOT NULL,
    email varchar(360) NOT NULL,
    phone varchar(12),
    type VARCHAR(10) NOT NULL,
    isactive BOOLEAN DEFAULT 0 NOT NULL
);

