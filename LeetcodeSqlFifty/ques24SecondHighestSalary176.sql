# Write your MySQL query statement below
select max(salary) as SecondHighestSalary
from Employee 
where salary < (
    select max(salary)
    from Employee
);
# Here if second sary also not exists then also no issue as any aggregate operator apply on null gives null.