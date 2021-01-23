SELECT c.name as carrier FROM CARRIERS c where c.cid IN (SELECT f.carrier_id 
FROM FLIGHTS f WHERE f.origin_city ='Seattle WA' AND f.dest_city = 'San Francisco CA');


-- Affected rows: 4. 

-- Query succeeded | 1s

-- the first 20 rows of the result:

-- carrier

-- Alaska Airlines Inc.
-- SkyWest Airlines Inc.
-- United Air Lines Inc.
-- Virgin America