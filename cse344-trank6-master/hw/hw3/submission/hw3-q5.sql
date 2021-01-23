SELECT f.dest_city as city FROM FLIGHTS f 
WHERE f.dest_city != 'Seattle WA' AND f.dest_city NOT IN 
(SELECT DISTINCT f2.dest_city FROM FLIGHTS f1, FLIGHTS f2 
WHERE f1.origin_city = 'Seattle WA' AND f2.dest_city != 'Seattle WA' AND f1.dest_city = f2.origin_city 
AND f2.dest_city NOT IN (SELECT f3.dest_city FROM FLIGHTS f3 WHERE f3.origin_city = 'Seattle WA')) 
AND f.dest_city NOT IN (SELECT DISTINCT f4.dest_city FROM FLIGHTS f4 where f4.origin_city = 'Seattle WA') GROUP BY f.dest_city;


-- Affected rows: 3. 
-- Query succeeded | 50s

-- city

-- Devils Lake ND
-- Hattiesburg/Laurel MS
-- St. Augustine FL