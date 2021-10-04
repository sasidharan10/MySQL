select e.*, 
DENSE_RANK() over(PARTITION BY dept order by salary desc) as rnk,
rank() over(PARTITION BY dept order by salary desc) as dense_rnk
from employee e;