alter table staff add AGE INT after name;
#Modify datatype of a column : 
alter table student modify age int;
#Change contraints of a column : 
alter table staff modify age int not null unique;
#Rename a column : 
alter table student rename COLUMN age to AGE;
#Remove a column : 
alter table student drop column age;
#Rename a table : 
alter table stud rename student;