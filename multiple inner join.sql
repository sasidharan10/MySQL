select s.id,s.name,cr.course,ct.city from student s inner join course cr on s.course=cr.crid
inner join city ct on s.city=ct.cid;