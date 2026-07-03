use startersql;
select * from users;
select * from address;
select * from users inner join address on users.id = address.user_id;
select * from users left join address on users.id = address.user_id;
select * from users right join address on users.id = address.user_id;

-- Inner join is same as what natural join learnt during gate prep here cross product happens between all tables and then equility operation is performed
-- left join is same as what left outer join learnt during gate prep here cross product happens between all tables and then equility operation is performed and brings all the dangling tuples of left table.
-- right join is same as what right outer join learnt during gate prep here cross product happens between all tables and then equility operation is performed and brings all the dangling tuples of right table.
-- Now say you have multiple tables to whome you have to do joins so it's syntax is like
-- select * from table1 inner join table2 on condition inner join table3 on condition2 inner join table4 on condition3.