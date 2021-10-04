CREATE TABLE Transaction_Tbl(
 `CustID` int ,
 `TranID` int ,
 `TranAmt` Double ,
 `TranDate` date 
); 
INSERT Transaction_Tbl (`CustID`, `TranID`, `TranAmt`, `TranDate`) VALUES (1001, 20001, 10000, CAST('2020-04-25' AS Date))
,(1001, 20002, 15000, CAST('2020-04-25' AS Date))
,(1001, 20003, 80000, CAST('2020-04-25' AS Date))
, (1001, 20004, 20000, CAST('2020-04-25' AS Date))
, (1002, 30001, 7000, CAST('2020-04-25' AS Date))
,(1002, 30002, 15000, CAST('2020-04-25' AS Date))
,(1002, 30003, 22000, CAST('2020-04-25' AS Date));

select * from Transaction_Tbl;

select *,max(TranAmt) over(partition by CustID) as max_tran, 
(TranAmt/max(TranAmt) over(partition by CustID)) as ratio from Transaction_Tbl;





