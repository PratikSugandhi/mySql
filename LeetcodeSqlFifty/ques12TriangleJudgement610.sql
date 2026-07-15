# Write your MySQL query statement below
select x,y,z,if(x+y>z and y+z>x and x+z>y,'Yes','No') as triangle from Triangle;
-- Here this is the syntax of if statement in mysql such that if(condition,ifConditionIsTrue,ifConditionIsFalse);