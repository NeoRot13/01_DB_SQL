/* QUERIES Filtern mit WHERE */

/*
    Eingrenzen/Filtern WHERE & AND/OR etc.
    Eingrenzen/Filtern WHERE & LIKE + Parameter
    Eingrenzen/Filtern WHERE & RegEx
    Eingrenzen/Filtern WHERE & IN / NOT IN
    Eingrenzen/Filtern WHERE & BETWEEN / NOT BETWEEN
*/

-- Eingrenzen/Filtern WHERE & AND/OR etc.
/*
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
/*
-- Unscharfe Suche
SELECT 
    ticker AS "SYM",
    c_name AS "Unternehmen",
    industry AS "Branche"
FROM stocks.ccc

-- scharfe Suche nach Strings
# WHERE industry = "Media"

-- unschärfere Suche
-- Branchenname beginnt mit.. , dahinter beliebige Chars
# WHERE industry LIKE "Air%"
-- Branchenname endet mit... , davor beliebige Chars
# WHERE industry LIKE "%ment"
-- Branchenname enthaelt ...
# WHERE industry LIKE "%ood%"

-- Branchenname endet/beginnt mit ... , danach/davor/inmitten ganau Char
# WHERE industry LIKE "__dia"
# WHERE industry LIKE "Med__"
# WHERE industry LIKE "M___a"
# WHERE industry LIKE "_ir%"
# WHERE industry LIKE "_ood%"

# WHERE industry LIKE "%ment"
# WHERE industry LIKE "%ment" AND industry NOT LIKE "%ipment"
WHERE industry LIKE "%ment" AND industry NOT LIKE "%ipment" AND industry NOT LIKE "%tain%"

ORDER BY industry ASC
LIMIT 40 -- X Zeilen ab 0
;
*/

-- Eingrenzen/ filtern whALTER & IN / NOT IN (Suchsets)
/*
SELECT 
    ticker AS "SYM",
    c_name AS "Unternehmen",
    sector AS "Sektor",
    industry AS "Branche"
FROM stocks.ccc
# WHERE sector = "Financials"
# WHERE sector = "Financials" AND industry NOT IN ("Insurance","Banks")
WHERE industry IN ("Beverages")

ORDER BY industry ASC
LIMIT 40 -- X Zeilen ab 0
;
*/

-- Eingrenzen/Friltern WHERE & RegEx
/*
SELECT
    c_name "Unternehmen"
FROM stocks.ccc
# WHERE c_name RLIKE "^[AZ]"      -- mit A oder Z beginnend
WHERE c_name RLIKE "^[1-9]"     -- mit Ziffer beginnend
ORDER BY c_name;
*/

-- Eingrenzen/Filtern WHERE & BETWEEN / NOT BETWEEN

SELECT 
    ticker AS "SYM",
    c_name AS "Unternehmen",
    price AS "Kurs ($)",
    sector AS "Sektor",
    industry AS "Branche"
FROM stocks.ccc
# WHERE sector = "Financials" AND price < 30.0 -- =/>/<
# WHERE sector = "Financials" AND (price BETWEEN 30.0 AND 50.0) -- =/>/<
WHERE sector = "Financials" AND NOT (price BETWEEN 20.0 AND 250.0) -- Band rausfiltern

ORDER BY price DESC
LIMIT 200 -- X Zeilen ab 0
;


