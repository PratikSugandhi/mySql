use startersql;

-- Indexing in  mysql
-- In mySql indexing is by default made on primary key.
show indexes from users;
-- Single level index
-- create index idx_gender on users(gender);
-- Multilevel Index

create index idx_multi on users(gender,salary);

-- to drop the index 

drop index idx_multi on users;


select avg(salary) from users;
-- SUB-QUERIES in mysql.
--  Like we want details of all the users whose salary is greater than the avg salary.

select * from users where salary > (select avg(salary) from users); 


-- Group by and having in mysql

-- group by with count
select gender,avg(salary) as avg_salary,count(*) as count from users group by gender;

-- group by with having for applying filtering as here we can't use where.
select gender,avg(salary) as avg_salary,count(*) as count from users group by gender having avg(salary)>50000;

-- roll up which is use to find sub total and grand total.alter
select gender,avg(salary) as avg_salary,count(*) as count from users group by gender with rollup;

-- rollup compute median total like in above query it is like { (67333.333333*9) + (67750.000000*12) } /21.

-- You can use where with group by but remember where is always use before group by and to apply conditions to groups formed by group by is always done via having.

SELECT referred_by_id, COUNT(*) AS total_referred
FROM users
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id;

-- Another Example: Groups with More Than 1 Referral

SELECT referred_by_id, COUNT(*) AS total_referred
FROM users
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id
HAVING COUNT(*)>1;