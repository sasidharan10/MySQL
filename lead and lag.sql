select id,name,age,city, salary,
 lag(salary) over(partition by dept order by id) as previous_salary,
 lead(salary) over(partition by dept order by id) as next_salary
from employee e;