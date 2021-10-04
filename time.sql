select curtime(),current_timestamp(),localtime(),
time("2021-08-02 02:30:45:52") as "time()",
hour("2021-08-02 02:30:45:52") as "hour()",
minute("2021-08-02 02:30:45:52") as "minute()",
second("2021-08-02 02:30:45:52") as "second()",
timediff("06:56:03:12","02:30:45:52") as "timediff()";

select addtime("06:56:03:12","00:30:45:52") as "addtime()",
subtime("06:56:03:12","00:30:45:52") as "subtime()",
maketime(11,32,46) as "maketime()",
time_format("06:56:03:12","%h : %i : %s - %p") as "time_format()",
time_to_sec("06:56:03:12") as "time_to_sec()",
sec_to_time("32145") as "sec_to_time()";