/* QUERIES - count()*/

/* Links:
    https://dev.mysql.com/doc/refman/5.6/en/counting-rows.html
    https://dev.mysql.com/doc/refman/5.6/en/group-by-handling.html
    https://dev.mysql.com/doc/refman/5.6/en/aggregate-functions.html#function_count-distinct
*/


-- welche VERSCHIEDENEN Sektoren gibt es?
/*
SELECT
    DISTINCT sector Industriesektoren
FROM stocks.ccc
ORDER BY sector ASC
;
*/

-- Wie viele VERSCHIEDENE Sektoren gibt es?
/*
SELECT
    COUNT(DISTINCT sector) "Anzahl Sektoren"
FROM stocks.ccc
;
*/

-- Welche VERSCHIEDENEN Branchen gibt es?
/*
SELECT
    DISTINCT industry Branchen
FROM stocks.ccc
ORDER BY Branchen ASC
;
*/

-- Wie viele VERSCHIEDENE Branchen gibt es?
/*
SELECT
    COUNT(DISTINCT industry) "Anzahl Branchen"
FROM stocks.ccc
;
*/

-- Wie viele VERSCHIEDENE Branchen gibt es
-- in den jeweiligen Industriesektoren?
/**/
SELECT
    sector Industriesektoren, -- nicht aggregiert / organisch
    COUNT(DISTINCT industry) Branchen -- aggregiert / durch eine Funktion entstanden
FROM stocks.ccc
WHERE sector LIKE "Co%"
GROUP BY sector -- bei Kombination nicht aggr. / aggr.
HAVING Branchen > 10 -- Filter in aggr. Felder / nach GROUP
ORDER BY Branchen DESC
;















