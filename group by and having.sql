select c.city,count(a.city) as Total from actress a inner join
city c on a.city=c.cid where age<30 group by city
having count(a.city)>1 order by count(a.city) desc;