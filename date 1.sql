select curdate(),sysdate(),now(),
last_day("2021-08-02 13:39:06") as "Last Day",
day("2021-08-02 13:39:06") as "day()",
dayname("2021-08-02 13:39:06") as "dayname()",
week("2021-08-02 13:39:06") as "week()",
month("2021-08-02 13:39:06") as "month()",
year("2021-08-02 13:39:06") as "year()";


select dayofweek("2021-08-02 13:39:06") as "dayofweek()",
dayofmonth("2021-08-02 13:39:06") as "dayofmonth()",
dayofyear("2021-08-02 13:39:06") as "dayofyear()",
weekday("2021-08-02 13:39:06") as "weekday()",
weekofyear("2021-08-02 13:39:06") as "weekofyear()",
yearweek("2021-08-02 13:39:06") as "yearweek()";

select extract(hour from "2021-08-02 13:39:06") as "HOUR",
extract(day from "2021-08-02 13:39:06") as "DAY",
extract(week from "2021-08-02 13:39:06") as "WEEK",
extract(month from "2021-08-02 13:39:06") as "MONTH",
extract(quarter from "2021-08-02 13:39:06") as "QUARTER",
extract(year from "2021-08-02 13:39:06") as "YEAR";
