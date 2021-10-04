create table employee (
ID int not null unique,
NAME varchar(20) not null,
AGE int not null check(AGE>=18),
GENDER varchar(1) not null,
PHONE int not null unique,
CITY varchar(20) not null default "Coimbatore"
);