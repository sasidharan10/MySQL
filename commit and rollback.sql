select * from actors;

update actors set city="Chennai" where id in (1,5,7,8); 

commit;  #permanently saves all data which cannot be rollback

rollback;  #undo changes which are not committed