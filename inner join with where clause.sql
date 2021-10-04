select a.id,a.name,a.age,a.movie,a.phone,c.city
from actress a inner join city c on a.city=c.cid
where c.city="Mumbai";