select * from (select e.*, ROW_NUMBER() over(PARTITION BY dept order by id)
 as Number from employee e)x where x.number<3;