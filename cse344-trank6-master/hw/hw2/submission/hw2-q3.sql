SELECT W.day_of_week AS day_of_week, AVG(f.arrival_delay) as delay 
FROM FLIGHTS f, WEEKDAYS w 
WHERE f.day_of_week_id = w.did GROUP BY w.day_of_week ORDER BY AVG(f.arrival_delay) DESC LIMIT 1;