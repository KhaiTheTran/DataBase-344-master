SELECT DISTINCT c.name as name FROM CARRIERS c, FLIGHTS f WHERE f.carrier_id = c.cid 
GROUP BY c.name, f.day_of_month 
HAVING count(*) > 1000;