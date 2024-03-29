/* QUERIES Sortierung */

-- ASC / DESC

SELECT 
    ticker AS "SYM",
    c_name AS "Unternehmen",
    price AS "Kurs in $",
    # no_yrs AS "YEARS ++",
    CONCAT(sector," | ",industry) AS "Operations"
FROM stocks.ccc
# ORDER BY ticker ASC -- SYM, alphabetisch, aufsteigend
# ORDER BY ticker DESC -- SYM, alphabetisch, aubsteigend
# ORDER BY price ASC -- Kurs, beginnend mit der günstigsten Aktie
# ORDER BY price DESC -- Kurs, beginnend mit der teuerste Aktie
# ORDER BY no_yrs DESC -- Aktien mit der längsten Div.-Historie
# ORDER BY sector DESC,industry ASC -- Kombinationen ASC / DESC alphabetisch
ORDER BY no_yrs DESC,sector ASC -- Kombinationen ASC / DESC alphabetisch / numerisch
Limit 40
;


