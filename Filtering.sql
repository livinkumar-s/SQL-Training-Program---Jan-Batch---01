use employee;

INSERT INTO actorlist VALUES 
(6,"NTR",46),
(7,"AK",52),
(8,"Rajini",74),
(9,"Surya",50),
(10,"STR",45);


select * from actorlist where age>50;
select * from actorlist where id BETWEEN 4 and 50;
select * from actorlist where age>=48 and id>5;
select * from actorlist where age>=48 or id>5;
select * from actorlist where not age>=48;

select * from actorlist where age in (4,34,43,50,51,71,74);
select * from actorlist where name like "s%";
select * from actorlist where name like "%a";
select * from actorlist where name like "%a%";