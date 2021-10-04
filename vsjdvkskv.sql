CREATE TABLE Employee(
 EmpID int ,
 EmpName varchar(30) ,
 Salary Bigint ,
 DeptID int 
);

INSERT Employee (`EmpID`, `EmpName`, `Salary`, `DeptID`) VALUES (1001, N'Mark', 60000, 2);
INSERT Employee (`EmpID`, `EmpName`, `Salary`, `DeptID`) VALUES (1002, N'Antony', 40000, 2);
INSERT Employee (`EmpID`, `EmpName`, `Salary`, `DeptID`) VALUES (1003, N'Andrew', 15000,1);
INSERT Employee (`EmpID`, `EmpName`, `Salary`, `DeptID`) VALUES (1004, N'Peter', 35000, 1);
INSERT Employee (`EmpID`, `EmpName`, `Salary`, `DeptID`) VALUES (1005, N'John', 55000, 1);
INSERT Employee (`EmpID`, `EmpName`, `Salary`, `DeptID`) VALUES (1006, N'Albert', 25000, 3);
INSERT Employee (`EmpID`, `EmpName`, `Salary`, `DeptID`) VALUES (1007, N'Donald', 35000, 3);

select * from Employee;