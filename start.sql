use problems;
use student;

select * from candidate;
select * from candidate where year(dob) in (1995);
select id,max(id) from actress;
