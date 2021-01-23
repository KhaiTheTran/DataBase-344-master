SELECT c.name as carrier FROM FLIGHTS f, CARRIERS c 
WHERE c.cid = f.carrier_id AND f.origin_city ='Seattle WA' AND f.dest_city = 'San Francisco CA'GROUP BY c.name;


-- Affected rows: 4. 

-- Query succeeded | 1s

-- the first 20 rows of the result:
-- carrier

-- Alaska Airlines Inc.
-- SkyWest Airlines Inc.
-- United Air Lines Inc.
-- Virgin America