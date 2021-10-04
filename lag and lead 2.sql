select id,name,age,city, salary,
lag(salary) over(partition by dept order by id) as previous_salary,
case
  when salary>lag(salary) over(partition by dept order by id) then "Lower Salary"
  when salary<lag(salary) over(partition by dept order by id) then "Higher Salary"
  when salary=lag(salary) over(partition by dept order by id) then "Equal Salary"
  end Salary_Comparision
from employee e;