CREATE TABLE CARRIERS (cid varchar(7) primary key, name varchar(83));
CREATE TABLE MONTHS (mid int primary key, month varchar(9));
CREATE TABLE WEEKDAYS (did int primary key, day_of_week varchar(9));


CREATE TABLE FLIGHTS (fid int primary key,
month_id int references MONTHS,
day_of_month int,
day_of_week_id int references WEEKDAYS,
carrier_id varchar(7) references CARRIERS,
flight_num int,
origin_city varchar(34),
origin_state varchar(47),
dest_city varchar(34),
dest_state varchar(46),
departure_delay int,
taxi_out int,
arrival_delay int,
canceled int,
actual_time int,
distance int,
capacity int,
price int);

.mode csv
.import ../starter-code/flights-small.csv FLIGHTS
.import ../starter-code/carriers.csv CARRIERS
.import ../starter-code/months.csv MONTHS
.import ../starter-code/weekdays.csv WEEKDAYS

PRAGMA foreign_keys = on;
.mode column
.header on
.width 29