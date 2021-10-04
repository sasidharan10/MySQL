select s.id,s.name,c.city from student s inner join city c
on s.city=c.cid where s.city=1 union all
select sf.id,sf.name,ci.city from staff sf inner join
city ci on sf.city=ci.cid where sf.city =1;
