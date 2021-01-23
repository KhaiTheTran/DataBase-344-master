SELECT DISTINCT f1.dest_city as city FROM FLIGHTS f, FLIGHTS f1 
WHERE f1.dest_city != 'Seattle WA' AND f.dest_city = f1.origin_city AND f.origin_city = 'Seattle WA' AND f1.dest_city NOT IN 
(SELECT f2.dest_city FROM FLIGHTS f2 WHERE f2.origin_city = 'Seattle WA');


-- Affected rows: 256. 

-- Query succeeded | 8s

-- the first 20 rows of the result:
-- city

-- Dothan AL
-- Toledo OH
-- Peoria IL
-- Yuma AZ
-- Bakersfield CA
-- Daytona Beach FL
-- Laramie WY
-- North Bend/Coos Bay OR
-- Erie PA
-- Guam TT
-- Columbus GA
-- Wichita Falls TX
-- Hartford CT
-- Myrtle Beach SC
-- Arcata/Eureka CA
-- Kotzebue AK
-- Medford OR
-- Providence RI
-- Green Bay WI
-- Santa Maria CA