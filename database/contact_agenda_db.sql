DROP DATABASE IF EXISTS contact_agenda_db;

CREATE DATABASE contact_agenda_db;

USE contact_agenda_db;

CREATE TABLE users(
	user_id INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
	user_nickname VARCHAR(20) NOT NULL UNIQUE,
	user_firstname VARCHAR(20) NOT NULL,
	user_lastname VARCHAR(20) NOT NULL,
	password VARCHAR(400),
	PRIMARY KEY (user_id)
);

CREATE TABLE sessions(
	sessions_id INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
	user_id INTEGER,
	user_sesion_id VARCHAR(400) UNIQUE,
	PRIMARY KEY (sessions_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE contact_relation(
	contact_relation_id INTEGER NOT NULL AUTO_INCREMENT,
	contact_relation VARCHAR(10),
	PRIMARY KEY (contact_relation_id)
);

CREATE TABLE contact_address(
	contact_address_id INTEGER UNIQUE AUTO_INCREMENT,
	contact_id INTEGER,
	address_1 VARCHAR(70),
	address_2 VARCHAR(70),
	city VARCHAR(20),
	PRIMARY KEY (contact_address_id)
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

CREATE TABLE contacts(
	contact_id INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
	user_id INTEGER,
	contact_relation_id INTEGER,
	contact_name VARCHAR(30) NOT NULL,
	contact_lastname VARCHAR(30) NOT NULL,
	phone_number INTEGER NOT NULL UNIQUE,
	contact_email VARCHAR(40) DEFAULT NULL UNIQUE,
	contact_birthday DATE DEFAULT NULL,
	PRIMARY KEY (contact_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (contact_relation_id) REFERENCES contact_relation(contact_relation_id),
	FOREIGN KEY (contact_address_id) REFERENCES contact_address(contact_address_id)
);

