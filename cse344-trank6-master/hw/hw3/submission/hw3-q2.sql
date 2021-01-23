SELECT f.origin_city as city FROM FLIGHTS f 
WHERE NOt EXISTs(SELECT * FROM FLIGHTS f1 WHERE f.origin_city = f1.origin_city AND f1.actual_time >= (3*60))
GROUP BY f.origin_city ORDER BY f.origin_city;


-- Affected rows: 109. 

-- Query succeeded | 4s

-- the first 20 rows of the result:
-- city

-- Aberdeen SD
-- Abilene TX
-- Alpena MI
-- Ashland WV
-- Augusta GA
-- Barrow AK
-- Beaumont/Port Arthur TX
-- Bemidji MN
-- Bethel AK
-- Binghamton NY
-- Brainerd MN
-- Bristol/Johnson City/Kingsport TN
-- Butte MT
-- Carlsbad CA
-- Casper WY
-- Cedar City UT
-- Chico CA
-- College Station/Bryan TX
-- Columbia MO
-- Columbus GA