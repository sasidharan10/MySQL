select e.*,ROW_NUMBER() over(PARTITION BY dept) as number from employee e;