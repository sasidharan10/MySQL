create table student (
ID int NOT NULL,
NAME varchar(20),
COURSE int,
CITY int,
PRIMARY KEY(ID),
FOREIGN KEY(course) references COURSE(CRID),
FOREIGN KEY(CITY) references city(cid));
