/* QUERIES Filtern mit WHERE */

/*
    Eingrenzen/Filtern WHERE & AND/OR etc.
    Eingrenzen/Filtern WHERE & LIKE + Parameter
    Eingrenzen/Filtern WHERE & RegEx
    Eingrenzen/Filtern WHERE & IN / NOT IN
    Eingrenzen/Filtern WHERE & BETWEEN / NOT BETWEEN
*/
/*
-- Eingrenzen/Filtern WHERE & AND/OR etc.
SELECT 
    ticker AS "SYM",
    c_name AS "Unternehmen",
    price AS "Kurs ($)",
    payouts AS "Z. p.a.",
    dividend AS "Dividende",
    CONCAT(sector," | ",industry) AS "Operations"
FROM stocks.ccc
-- Einzeldatern / Strings
# WHERE sector = "Communication Services" -- spez. Sektor
# WHERE sector = "Media" -- spez. Branche
# WHERE payouts = 12 -- Wer zahlt monatlich?
-- Kombination aus AND
# WHERE sector = "Communication Servic" AND industry = "Entertainment"
# WHERE sector = "Communication Servic" AND payouts = 12
-- Kombinationen durch AND / OR
# HERE sector = "Communication Servic" AND (industry = "Entertainment" OR industry = "Media")
-- Kombinationen durch AND / NOT
WHERE sector = "Communication Servic" AND NOT industry = "Media"
ORDER BY industry DESC
LIMIT 20 -- X Zeilen ab 0
;
*/

-- Eingrenzen/Filtern WHERE & LIKE + Parameter
-- Unscharfe Suche
SELECT 
    ticker AS "SYM",
    c_name AS "Unternehmen",
    price AS "Kurs ($)",
    payouts AS "Z. p.a.",
    dividend AS "Dividende",
    CONCAT(sector," | ",industry) AS "Operations"
FROM stocks.ccc
ORDER BY industry DESC
LIMIT 20 -- X Zeilen ab 0



