SELECT c.name AS carrier, MAX(f.price) AS max_price FROM CARRIERS c, FLIGHTS f 
WHERE ((f.origin_city  = 'Seattle WA' 
AND f.dest_city = 'New York NY') OR (f.origin_city = 'New York NY' AND f.dest_city  = 'Seattle WA')) AND c.cid = f.carrier_id 
GROUP BY c.name;