create table duplicate as select * from student;

create table dummy like student;

insert into dummy select * from student;