-- Creating a new database
CREATE database sqlRevison;
-- Now using that database
USE sqlRevison;

-- Creating a new table

CREATE TABLE users(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    gender ENUM('male','female','other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- command how to get all tables present in current databases.
SHOW TABLES;
-- Seeing the tables

SELECT *  FROM users;
-- renaming the existing table name
RENAME TABLE users to customers;

-- value putting inside the table customers
-- Below one is not recognized because it will work but it may can lead to add more unncessary attributes.
INSERT INTO customers VALUES ("Pratik","admin01@gmail.com","male","2000-05-27");
INSERT INTO customers(name,email,gender,date_of_birth) VALUES ("Pratik","admin01@gmail.com","male","2000-05-27");
INSERT INTO customers(name,email,gender,date_of_birth) VALUES ("Avi","admin02@gmail.com","male","2002-05-27");
INSERT INTO customers(name,email,gender,date_of_birth) VALUES ("Sita","admin03@gmail.com","female","2003-05-27");
INSERT INTO customers(name,email,gender,date_of_birth) VALUES ("Saiyara","admin44@gmail.com","female","2010-05-27");

SELECT * FROM customers;
RENAME TABLE customers to users;
SELECT * FROM users;

-- Now we can add new column, delete any column and can update any tuple and can change the sequence of any attributes.Using alter keyword

ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT true;
ALTER TABLE users DROP COLUMN is_active;
ALTER TABLE users MODIFY COLUMN name VARCHAR(150);
ALTER TABLE users MODIFY COLUMN gender ENUM('male','female','other') after name;
ALTER TABLE users MODIFY COLUMN name VARCHAR(150) first;