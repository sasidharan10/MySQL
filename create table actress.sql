create table actress (
ID INT NOT NULL,
NAME varchar(20) NOT NULL,
AGE INT NOT NULL,
 MOVIE VARCHAR(20) NOT NULL,
 PHONE INT,CITY INT NOT NULL,
 PRIMARY KEY(ID),
 foreign key(city) references city(cid));