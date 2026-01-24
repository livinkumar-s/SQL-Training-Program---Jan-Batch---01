use employee;

create table students (
id int primary key auto_increment,
name varchar(30) not null,
mark int not null,
dept varchar(10) not null
);

insert into students (name, mark, dept) values
("Priyanka",90,"ECE"),
("Mani",80,"ECE"),
("kumar",50,"ECE"),
("Ram",88,"CSE"),
("Vishal",68,"CSE"),
("Vijay",98,"CSE"),
("Kamal",100,"CSE"),
("Jerry",78,"EEE"),
("Nikin",58,"EEE"),
("Mota",99,"EEE");

select * from students;

select avg(mark) from students;

select * from students where 
mark>(select avg(mark) from students);

select * from students 
where 
mark > ANY (select mark from students where dept="ECE");

select * from students s1
where mark > 
(select avg(mark) from students s2 where dept=s1.dept);
 
select * from product;


 SELECT
    CONCAT(
        'The product name is ',
        UPPER(name),
        '. It belongs to ',
        UPPER(category),
        ' category and the average price of that category is ',
        (select avg(price) from product where category=p1.category)
    ) AS productDetails
FROM product p1;