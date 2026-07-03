use startersql;
drop table if exists address;

select * from users;
create table address(
    id int primary key auto_increment,
    user_id int,
    street varchar(255),
    city varchar(255),
    state varchar(155),
    pincode varchar(10),
	constraint fk_user foreign key (user_id) references users(id) on delete cascade
    -- Or you can also define as foreign key (user_id) references users(id) on delete cascade
);
insert into address(user_id,street,city,state,pincode) values
(22, '14 Park Street', 'Kolkata', 'West Bengal', '700016'),
(3, '32 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
(24, '5 North Usman Road', 'Chennai', 'Tamil Nadu', '600017'),
(5, '17 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001'),
(6, '55 Banjara Hills', 'Hyderabad', 'Telangana', '500034'),
(7, '88 Connaught Place', 'Delhi', 'Delhi', '110001'),
(8, '10 MG Marg', 'Dehradun', 'Uttarakhand', '248001'),
(9, '23 Brigade Road', 'Bengaluru', 'Karnataka', '560025'),
(11, '67 Ashoka Road', 'Delhi', 'Delhi', '110001'),
(12, '89 MG Road', 'Pune', 'Maharashtra', '411001'),
(13, '12 Brigade Road', 'Bengaluru', 'Karnataka', '560025'),
(14, '34 Park Street', 'Kolkata', 'West Bengal', '700016'),
(15, '56 Connaught Place', 'Delhi', 'Delhi', '110001'),
(16, '78 Marine Drive', 'Mumbai', 'Maharashtra', '400020'),
(17, '90 MG Marg', 'Dehradun', 'Uttarakhand', '248001'),
(18, '11 North Usman Road', 'Chennai', 'Tamil Nadu', '600017'),
(19, '33 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
(20, '22 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001');

select * from address;
-- so overall in address table it is referncing table and user_id is fk and it is refrencing to the id of users table.
-- Now if we delete any record in address table then it will not be affect in users table but
-- if we delete any record in users table then it will also delete in address table

delete from users where id = 5;

-- Now you can delete the forign key too but you should know the name of that fk if you not given then mysql automatically give it's name so it is good habit that you should define name yourselves;
alter table address drop foreign key fk_user;
alter table address add constraint fk_user foreign key (user_id) references users(id) on delete cascade; 
-- you can also use this above line if you forgot to make forign key while defining the table.