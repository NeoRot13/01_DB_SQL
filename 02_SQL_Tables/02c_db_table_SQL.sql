/* ------  Strukturen UNIQUE ----- */

/* Key */

/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
# USE boo; --> oder boo.xxx

/* Tabelle anlegen, falls noch nicht vorhanden */
CREATE TABLE IF NOT EXISTS boo.test
(
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(20) NOT NULL DEFAULT "TBA",
    age INT NOT NULL DEFAULT 0
);

/* Alle Tabellen in der DB anzeigen */
# SHOW TABLES;

/* Struktur der Tabelle anzeigen */
DESCRIBE boo.test;

/* ----- Daten ------- */
INSERT INTO boo.test(id,name,age) VALUES (1,"Grizabella",29);
INSERT INTO boo.test(id,name,age) VALUES (2,"Alonzo",35);
INSERT INTO boo.test(id,name,age) VALUES (3,"Alonzo",24);
INSERT INTO boo.test(id,name,age) VALUES (4,"Maxine",26);

/* Inhalte der Tabelle anzeigen */
SELECT * FROM boo.test;



