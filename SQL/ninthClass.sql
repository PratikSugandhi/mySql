-- Procedures in mysql

use startersql;
-- here why  need to change the delimeter because in mysql semicolon is by default delimiter.
delimiter $$
create procedure retrive()
begin 
	select * from users;
end $$

delimiter ;

call retrive();

-- procedure with arguments

DELIMITER $$
CREATE PROCEDURE AddUser(
    IN p_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_gender ENUM('Male', 'Female', 'Other'),
    IN p_dob DATE,
    IN p_salary INT
)
BEGIN

    INSERT INTO users (name, email, gender, date_of_birth, salary)
    VALUES (p_name, p_email, p_gender, p_dob, p_salary);
END$$
DELIMITER ;

CALL AddUser('Kiran Sharma', 'kiran@example.com', 'Female', '1994-06-15', 72000);

-- Viewing stored procedures
show procedure status where db='startersql';

-- dropping a procedure
drop procedure if exists delete_user;

-- Now some more topics on mysql
-- logical operator like and or not

-- To add a column in existing table
alter table users add column working_hour varchar(100);

-- Wildcard operator there are two one is like i.e % and second is underscore i.e _
select * from users where name like'%a%';
select * from users where name like'_a%'; -- means first letter could be anything then second letter a and rest is anything,

-- limit and offset where limit defines the count of tuples and offset defines how much tuples have to leave
select * from users limit 5 offset 10; -- It means first 10 tuples are leaved froom 11th tuple to bring next 5 tuples.alter

-- Distinct keywords
select distinct gender from users;

-- Truncate keyword and difference between the drop v/s delete v/s truncate imp interview ques
truncate table users; -- and this action is not rollbackable

-- modify v/s change in mysql
-- modify is use when you want to change the defination of the attribute/col like datatypes and so on and change is use when you want to rename the attributes.

alter table address change column city location varchar(100);
select * from address;

alter table users modify column salary bigint;