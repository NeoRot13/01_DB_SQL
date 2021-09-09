DROP DATABASE IF EXISTS boo;

CREATE DATABASE IF NOT EXISTS boo;

# USE boo;
DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(20) NOT NULL UNIQUE,
    user_pwd VARCHAR(40) NOT NULL DEFAULT "0000",
    first_name VARCHAR(20) NOT NULL DEFAULT "red pill",
    family_name VARCHAR(20) NOT NULL DEFAULT "blue pill"
);

DESCRIBE boo.users;

INSERT INTO
	boo.users(user_name,user_pwd,first_name,family_name)
VALUES
	("Neo",SHA1("1234"),"Keanu","Reeves"),
	("Morpheus",SHA1("5678"),"Laurence","Fischburne"),
	("Agent Smith",SHA1("8765"),"Hugo","Weaving"),
	("Trinity",SHA1("9999"),"Carrie-Anne","Moss")
;

SELECT * FROM boo.users;


