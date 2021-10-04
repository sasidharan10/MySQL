select ID,NAME,MARKS,
case
	when marks >=90 and marks<=100 then "A+"
	when marks >=80 and marks<=89 then "A"
	when marks >=70 and marks<=79 then "B"
	when marks<69 then "C"
	else "Data Incorrect"
end as GRADE
from marks;