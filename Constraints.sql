use employee;

create table cricketerlist (
cricketer_id int primary key auto_increment,
name varchar(50) not null,
mailId varchar(100) unique not null,
noOfCenturies int not null CHECK (noOfCenturies>10),
isActive boolean default 1
);

insert into cricketerlist (name,mailId,noOfCenturies) values
("Virat Kohli","king@gmail.com",85),
("Rohit Sharma","hit@gmail.com",50),
("MS Dhoni","msd@gmail.com",14),
("KL rahul","kl@gmail.com",25),
("Jadeja","jaddu@gmail.com",20);


insert into cricketerlist (name,mailId,noOfCenturies,isActive) values
("Sachein tendulkar","sachein@gmail.com",100,0);

select * from cricketerlist;

create table jersey (
id int primary key auto_increment,
jerseyNumber int not null,
playerId int,
foreign key (playerId) references cricketerlist(cricketer_id)
);

insert into jersey (jerseyNumber, playerId) values 
(77,20);

select * from actorlist;

create table latest_movie (
id int primary key auto_increment,
movie varchar(50) not null,
actorId int,
foreign key (actorId) references actorlist(id)
);

insert into latest_movie (movie,actorId) values
("Something",19);