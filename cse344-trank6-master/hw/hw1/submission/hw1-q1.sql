.header on
.mode column


Create table Edges(Source int, Destination int);
insert into Edges values (10,5);
insert into Edges values (6,25);
insert into Edges values (1,3);
insert into Edges values (4,4);
select * from Edges;
select Source from Edges;
select * from Edges where Source > Destination;
insert into Edges values ('-1','2000');
select * from Edges;
/* No, I do not get error because  the database engine converts values
between numeric storage classes (INTEGER) and TEXT during query execution.
*/