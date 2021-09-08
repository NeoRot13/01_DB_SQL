SHOW DATABASES;

DROP DATABASE IF EXISTS boo;

CREATE DATABASE IF NOT EXISTS boo;

USE boo;

CREATE TABLE IF NOT EXISTS users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(20) NOT NULL UNIQUE,
    first_name VARCHAR(20) NOT NULL,
    family_name VARCHAR(20) NOT NULL
);

DESCRIBE users;

INSERT INTO users(user_name,first_name,family_name) VALUES ("Neo","Keanu","Reeves");
INSERT INTO users(user_name,first_name,family_name) VALUES ("Morpheus","Laurence","Fischburne");
INSERT INTO users(user_name,first_name,family_name) VALUES ("Agent Smith","Hugo","Weaving");
INSERT INTO users(user_name,first_name,family_name) VALUES ("Trinity","Carrie-Anne","Moss");

SELECT * FROM users;

DROP TABLE IF EXISTS test;

SHOW TABLES;
