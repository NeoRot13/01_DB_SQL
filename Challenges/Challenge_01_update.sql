DROP DATABASE IF EXISTS boo;

CREATE DATABASE IF NOT EXISTS boo;

USE boo;

CREATE TABLE IF NOT EXISTS users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(20) NOT NULL UNIQUE,
    user_pwd VARCHAR(40) NOT NULL DEFAULT "0000",
    first_name VARCHAR(20) NOT NULL DEFAULT "red pill",
    family_name VARCHAR(20) NOT NULL DEFAULT "blue pill"
);

DESCRIBE users;

INSERT INTO users(user_name,user_pwd,first_name,family_name) VALUES ("Neo","1234","Frat","Durmaz");
INSERT INTO users(user_name,user_pwd,first_name,family_name) VALUES ("Neo","4321","Frat","Durmaz");
INSERT INTO users(user_name,user_pwd,first_name,family_name) VALUES ("Morpheus","5678","Laurence","Fischburne");
INSERT INTO users(user_name,user_pwd,first_name,family_name) VALUES ("Agent Smith","8765","Hugo","Weaving");
INSERT INTO users(user_name,user_pwd,first_name,family_name) VALUES ("Trinity","9999","Carrie-Anne","Moss");
INSERT INTO users(user_name) VALUES ("Matrix");

SELECT * FROM users;


