SELECT DISTINCT f.flight_num FROM FLIGHTS f, CARRIERS c,WEEKDAYS W WHERE f.origin_city ='Seattle WA' 
and f.dest_city = 'Boston MA' AND f.day_of_week_id = w.did AND W.day_of_week = 'Monday' AND c.cid = f.carrier_id 
AND c.name = 'Alaska Airlines Inc.';