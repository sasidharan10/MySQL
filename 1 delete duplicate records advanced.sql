use problems;

Create Table EmpDetail (
ID int not null auto_increment,
EmpName varchar(25),
Departmemt varchar(20),
Age int,
Gender char(1),
Salary Bigint,
primary key(ID)
);

Insert into EmpDetail (EmpName,Departmemt,Age,Gender,Salary) values('James','HR',30,'M',40000);
Insert into EmpDetail (EmpName,Departmemt,Age,Gender,Salary) values('James','HR',30,'M',40000);
Insert into EmpDetail (EmpName,Departmemt,Age,Gender,Salary) values('James','HR',30,'M',40000);
Insert into EmpDetail (EmpName,Departmemt,Age,Gender,Salary) values('John','Finance',32,'M',45000);
Insert into EmpDetail (EmpName,Departmemt,Age,Gender,Salary) values('Maria','Admin',28,'M',30000);
Insert into EmpDetail (EmpName,Departmemt,Age,Gender,Salary) values('Maria','Admin',28,'M',30000);
Insert into EmpDetail (EmpName,Departmemt,Age,Gender,Salary) values('Mark','Account',35,'M',50000);

select * from EmpDetail;

select EmpName,Departmemt,Age,Gender,Salary,count(*) from empdetail group by EmpName,Departmemt,Age,Gender,Salary;

select max(id) from empdetail group by EmpName,Departmemt,Age,Gender,Salary;

delete from EmpDetail where id not in (select max(id) from EmpDetail group by EmpName,Departmemt,Age,Gender,Salary);

with duplicate_cte as (select EmpName,Departmemt,Age,Gender,Salary,ROW_NUMBER() 
over(partition by EmpName,Departmemt,Age,Gender,Salary order by id) as dup_count from empdetail) 
delete from duplicate_cte where dup_count>1;

select EmpName,Departmemt,Age,Gender,Salary,ROW_NUMBER() 
over(partition by EmpName,Departmemt,Age,Gender,Salary order by id) as dup_count from empdetail;

