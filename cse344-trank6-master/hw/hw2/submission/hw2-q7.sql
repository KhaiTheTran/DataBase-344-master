SELECT SUM(f.capacity) AS capacity FROM MONTHS m, FLIGHTS f 
WHERE ((f.origin_city  = 'Seattle WA' 
AND f.dest_city = 'San Francisco CA') OR (f.origin_city = 'San Francisco CA' AND f.dest_city  = 'Seattle WA')) 
AND f.day_of_month = 10 AND m.month = 'July' AND f.month_id = m.mid;