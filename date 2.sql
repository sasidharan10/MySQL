select adddate("2021-08-02", interval 10 minute) as "10+minute",
adddate("2021-08-02", interval 10 day) as "10+day",
adddate("2021-08-02", interval 10 week) as "10+week",
adddate("2021-08-02", interval 10 month) as "10+month",
adddate("2021-08-02", interval 10 year) as "10+year";

select makedate(2017,10) as "Makedate()",
datediff("2021-10-25","2021-08-02") as "datediff()",
to_days("2021-10-25") as "to_days()",
from_days("723695") as "from_days()";

select date_format("2021-08-02 02:30:45:52",
"%d / %b / %Y, %W - %h:%i:%s %p") as "NewDate";

select str_to_date("july 06 21","%M %d %Y") as "Date";
