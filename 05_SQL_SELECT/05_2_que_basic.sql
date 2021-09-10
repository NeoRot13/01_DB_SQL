/* QUERIES Basic */

/*
Felder abfragen
Felder kombinieren
Ausgabe beschränken
*/

-- Abfragen aller Spalten der Tab.
# SELECT * FROM stocks.ccc;

-- Begrenzung: LIMIT
SELECT 
    ticker AS "SYM",
    price AS "Kurs in $",
	c_name AS "Unternehmen",
	industry AS "Branche"
FROM stocks.ccc
Limit 10 -- X Zeilen ab 0
# LIMIT 200,10 -- 10 Zeilen ab 100
;


