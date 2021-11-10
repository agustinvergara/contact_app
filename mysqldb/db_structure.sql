DROP DATABASE IF EXISTS contactapp_db;

CREATE DATABASE contactapp_db;

USE contactapp_db;

CREATE TABLE users(
    user_id INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
    password VARCHAR(400),
    alias VARCHAR(18) UNIQUE NOT NULL,
    first_name VARCHAR(18) NOT NULL,
    last_name VARCHAR(18) NOT NULL,
    email VARCHAR(30) UNIQUE NOT NULL,
    PRIMARY KEY (user_id)
    );

CREATE TABLE contacts(
    contact_id INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
    user_id INTEGER,
    first_name VARCHAR(18) NOT NULL,
    last_name VARCHAR(18) DEFAULT(NULL),
    birth_date DATE DEFAULT(NULL),
    landline INTEGER DEFAULT(NULL),
    cellphone INTEGER DEFAULT(NULL),
    email VARCHAR(30),
    PRIMARY KEY (contact_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
    );