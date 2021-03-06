
CREATE TABLE Emp(
`Grp`  varchar(20),
`Sequence`  int );

INSERT INTO Emp VALUES('A',1);
INSERT INTO Emp VALUES('A',2);
INSERT INTO Emp VALUES('A',3);
INSERT INTO Emp VALUES('A',5);
INSERT INTO Emp VALUES('A',6);
INSERT INTO Emp VALUES('A',8);
INSERT INTO Emp VALUES('A',9);
INSERT INTO Emp VALUES('B',11);
INSERT INTO Emp VALUES('C',1);
INSERT INTO Emp VALUES('C',2);
INSERT INTO Emp VALUES('C',3);

select * from Emp;

#query

select grp,min(sequence) as min_seq,max(sequence) as max_seq from
(select grp,sequence,row_number() over(partition by grp) as rnk,
sequence-row_number() over(partition by grp) as chk from Emp)x
group by grp,chk order by grp;

select grp,sequence,row_number() over(partition by grp) as rnk,
sequence-row_number() over(partition by grp) as chk from Emp;

select grp,sequence,row_number() over(partition by grp) as rnk,
sequence-row_number() over(partition by grp) as chk from Emp
group by grp,chk order by grp;

select group_concat()
 