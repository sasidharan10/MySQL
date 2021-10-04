create view studentdata as 
select s.ID,s.name, s.AGE,c.CITY
from student s inner join city c on s.city=c.cid;

alter view studentdata as 
select s.ID,s.name, s.AGE,c.CITY,cr.course
from student s inner join city c on s.city=c.cid
inner join course cr on s.course=cr.crid;

rename table studentdata to studentview;

select * from studentview;

drop view studentdata;