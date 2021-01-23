SELECT c.name AS name, ((SUM(f.canceled)*100.0)/count(*)) AS percent FROM CARRIERS c, FLIGHTS f 
WHERE f.origin_city  = 'Seattle WA' AND c.cid = f.carrier_id 
GROUP BY c.name HAVING ((SUM(f.canceled)*100.0)/count(*)) > 0.5 ORDER BY ((SUM(f.canceled)*100.0)/count(*)) ASC;