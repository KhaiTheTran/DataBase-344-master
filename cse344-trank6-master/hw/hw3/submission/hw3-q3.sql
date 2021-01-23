SELECT LN_CITY.origin_city as origin_city, 100*RN_CITY.N_CITY/LN_CITY.N_CITY as percentage 
FROM (SELECT f.origin_city, count(*) as N_CITY 
FROM FLIGHTS f GROUP BY f.origin_city) as LN_CITY LEFT OUTER JOIN (SELECT f.origin_city, count(*) as N_CITY 
FROM FLIGHTS f WHERE f.actual_time <= 3*60 
GROUP BY f.origin_city) as RN_CITY ON LN_CITY.origin_city = RN_CITY.origin_city 
GROUP BY LN_CITY.N_CITY, RN_CITY.N_CITY, LN_CITY.origin_city;


-- Affected rows: 327. 

-- Query succeeded | 6s

-- the first 20 rows of the result:

-- origin_city              percentage
-- Dothan AL                   100
-- Toledo OH                   99
-- Peoria IL                   99
-- Yuma AZ                     100
-- Bakersfield CA              82
-- Ontario CA                  88
-- Daytona Beach FL            97
-- Laramie WY                  100
-- Victoria TX                 100
-- North Bend/Coos Bay OR      100
-- Erie PA                     100
-- Guam TT
-- Columbus GA                 100
-- Wichita Falls TX            100
-- Juneau AK                   99
-- Hartford CT                 87
-- Hattiesburg/Laurel MS       100
-- Myrtle Beach SC             99
-- Arcata/Eureka CA            99
-- Kotzebue AK                 98