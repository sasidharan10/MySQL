select name,age,dept,max(salary) over (partition by dept) as Max_Salary from employee;


