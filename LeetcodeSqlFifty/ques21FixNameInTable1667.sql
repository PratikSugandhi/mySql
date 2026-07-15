# Write your MySQL query statement below
# here substring where it takes string from where substring has to find then i and j where i denotes to start from index i and takes j characters and if j is not passed then by default it goes to the end of the string(Here index is 1 based).
select user_id,concat(
    upper(substring(name,1,1)),
    lower(substring(name,2))
) as name
from Users
order by user_id;