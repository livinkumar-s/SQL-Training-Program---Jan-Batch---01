use employee;

select * from actorlist 
where age>45 order by name asc limit 2;

select * from actorlist limit 3 offset 6;

select * from actorlist
order by age desc limit 1 offset 1;

insert into actorlist values (11,"ghajini",74);

select * from actorlist limit 3 offset 9;
