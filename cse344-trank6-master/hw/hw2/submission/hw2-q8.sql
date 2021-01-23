SELECT c.name AS name, SUM(f.departure_delay) AS delay FROM CARRIERS c, FLIGHTS f 
WHERE c.cid = f.carrier_id GROUP BY c.name;