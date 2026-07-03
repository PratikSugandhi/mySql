use startersql;

-- Creating view of users table query for demo.Also view will be the new virtual table which will refernce to the query on which view is made.

create view user_view as select * from users where salary > 70000;
update users set salary = 60000 where id =6;
select * from user_view;

-- now if you want to delete the view then you can do it 
drop view user_view;

