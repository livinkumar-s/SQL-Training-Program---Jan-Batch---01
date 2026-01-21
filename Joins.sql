use employee;

insert into latest_movie (movie,actorId) values
("Thuglife",10);
select * from actorlist;
select * from latest_movie;

select a.name, l.movie
 from actorlist a inner join latest_movie l 
on l.actorId=a.id;


select *
 from actorlist a left join latest_movie l 
on l.actorId=a.id;
select *
 from actorlist a right join latest_movie l 
on l.actorId=a.id;


select * from actorlist a 
right join spouse s on s.actorId=a.id;

select * from actorlist a 
right join spouse s on s.actorId=a.id
union
select * from actorlist a 
left join spouse s on s.actorId=a.id;

create table spouse(
id int primary key auto_increment,
name varchar(50) not null,
actorId int
);

insert into spouse (name, actorId) values
("Sandhiya",100),("Anu",101);

select * from actorlist cross join latest_movie;

select * from spouse;

select a.name,s.name as SpouseName,l.movie from actorlist a inner join spouse s on
a.id=s.actorId inner join
 latest_movie l on l.actorId=a.id;