# Write your MySQL query statement below
-- In sql any compartor operator with null is unkown and unkown is consider as false.
select name from Customer where referee_id != 2 || referee_id is null;