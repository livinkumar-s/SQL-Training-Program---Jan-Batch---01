USE employee;

select * from product;

ALTER table product add rating int;
ALTER table product drop column rating;
ALTER table product modify name varchar(50);
ALTER TABLE product CHANGE name product_name varchar(50);

ALTER TABLE product RENAME TO product_details;


drop table transactiondetails;

DROP DATABASE temp;



CREATE table transactiondetails (
trans_id int primary key auto_increment,
fromAcc int not null,
toAcc int not null,
amount double not null
);

drop table transactiondetails;

CREATE table accountdetails (
acc_number int primary key auto_increment,
balance double not null
);

insert into accountdetails (balance)
values 
(3500000),
(50000),
(10000),
(2),
(45.56);

select * from accountdetails;

CREATE table userDetails (
user_id int primary key auto_increment,
name varchar(10) not null,
email varchar(50) unique not null,
mobile bigint unique not null,
password varchar(100) not null
);

insert into userdetails (name, email, mobile, password) 
values
("murugan","murugan@gmail.com",7689054567,"12345"),
("mahesh","mahesh@gmail.com",9689054567,"786544"),
("madhan","madhan@gmail.com",9989054567,"434532"),
("mrithula","mr@gmail.com",98765567,"234565436"),
("mohan","mohan@gmail.com",667784567,"098776");

select * from userdetails;

create view adminView as SELECT name, email, mobile, user_id
from userdetails;
create view othersView as SELECT name, user_id
from userdetails;
create view ownView as SELECT * 
from userdetails;

select * from adminview;
select * from ownview;
select * from othersview;

SET AUTOCOMMIT=0;

update userdetails set password="888" where user_id=4;


select * from accountdetails;
select * from transactiondetails;

STArt transaction;
update accountdetails set balance=balance-5000
 where acc_number=2;
update accountdetails set balance=balance+5000
 where acc_number=4;
insert into transactiondetails
value (1,2,4,5000);
COMMIT;

delete from transactiondetails where trans_id=2;