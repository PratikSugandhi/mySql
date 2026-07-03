use startersql;

select * from users;
-- deletion in sql
-- if you run delete from users; then the entire table will be deleted which is not recomandad so carefully apply delete query.
-- Also to avoid any consequences and huge loss first apply select and find those things which has to delete so to avoid any full loss.
delete from users where salary=55000;

-- Now to add the constraints in columns in existing table.

alter table users add constraint  unique (email);
select * from users;
-- Now discussing functions(Aggregate functions) in my sql

select count(*) from users;
select count(*) from users where gender='Male';
select count(*) from users where gender='female';

-- AS for renaming

select name as user_name, id as user_id,date_of_birth from users;
select min(salary) as min_salary, max(salary) as max_salary from users;
select sum(salary) as total_sum_salary from users;
select avg(salary) as avg_sum_salary from users;

-- Also remember with aggregate operators those columns/attributes could come in query on which group by is applied else it will throw the error.

select gender,avg(salary) as avg_salary from users group by gender;
select gender,sum(salary) as sum_salary from users group by gender;
select id,gender,length(name) as length_of_name,concat(lower(name),1011) as concated_username,year(date_of_birth) as YOB,month(date_of_birth) as MOB, day(date_of_birth) as DOB from users ;
-- now to find the year or time duration from date of birth to now
select name,datediff(curdate(),date_of_birth) as diff from users;

-- Now say there is a condition where we are dealing with some critical task like we are deleting some records says whose subscription is over then we have to carefully delete other wise may other will delelte whose subscription is currently on going then what to do.
-- Now currently what happens that autocommit is true i.e 1 so when ever we write query so my sql treat it as one transactional and runs and then commit it means permanently saved.
-- But we want to be in safe condition such that if by mistakely delete those record which should not to be so we could do undo.
-- So for it first make autocommit as 0 then perform what operation you want and now you relaize that those actions should not be perform so we can use rollback before commit then it will undo and retrive the old db. 
-- When we use commit then it will permanently saved. 
-- So remember in general you save autocommit as 1 and whenever you are doing any critical tasks then only set autocommit as 0.

set autocommit=0;
delete from users where id=7;
rollback;
commit;