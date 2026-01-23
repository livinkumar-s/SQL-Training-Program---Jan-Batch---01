use employee;

create table product(
pro_id int primary key auto_increment,
name varchar(20) not null,
price float,
category varchar(10)
);

insert into product (name, price,category) values 
("apple",40.45,"fruit"),
("orange",45.45,"fruit"),
("pine apple",80.45,"fruit"),
("banana",10.45,"fruit"),
("onion",44.55,"veg"),
("potato",30,"veg"),
("phone",30000,"gadget"),
("laptop",80000,"gadget"),
("tablet",60000,"gadget");

insert into product (name,price, category) value 
("pc",80000,"gadget");
select * from product;

delete from product where pro_id=10;

select count(price) from product;
select sum(pro_id) from product;
select max(price) from product;
select min(price) from product;
select avg(price) from product;

select name,avg(price) from product;


select category,avg(price) from product group by category
HAVING avg(price)>40;

select * from product;

select distinct price from product 
order by price desc limit 1 offset 1; 

SELECT MAX(price) AS second_highest
FROM product
WHERE price < (SELECT MAX(price) FROM product);


 