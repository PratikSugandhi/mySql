use startersql;
SELECT * FROM users;
SELECT name,gender from users where gender="female";
select name,id from users where id>10;
select * from users where date_of_birth is null;
select * from users where date_of_birth is not null;
select * from users where id between 10 and 21;
-- this can be use when we want to ban the user whose paymeent is due or have to ban due spaming and many more reasons.
select * from users where gender in ('male','other'); 
-- use of and or in sql
select * from users where gender='Male' and salary >=50000;
select * from users where gender='Male' or salary >=50000 order by date_of_birth asc limit 5 offset 4;
-- Updation in any tuples.
update users set salary=45000,email='aarav02@gmail.com' where id = 1;
update users set salary=45000 where id = 5;
update users set salary = 75000 where id = 5;
update users set name="Aarushi" where email="aisha@example.com";
update users set salary=salary+10000 where salary<60000;