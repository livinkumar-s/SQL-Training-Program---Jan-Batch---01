select name as result, age as actorAge from actorlist;

select round(5.49) as result;
select ceil(5.00000001) as result;
select floor(5.9999999999999) as result;
select abs(-9) as result;
select mod(9,7) as result;
select power(2,4);

select UPPER(concat("Hello"," Guys","...!")) as result;
select upper("hello") as result;
select lower("HELLO") as result;
select length("Hello world") as result;
select substring("vijaykumar",6,5) as result;
select replace("Hello guys Hello Girls....","Hello","Hi") 
as result;

select curdate() as result;
select curtime() as result;
select now() as result;
select datediff("2026-01-30",curdate()) as result;


select mod(age,2) as result from actorlist;


SELECT concat("His name is ", UPPER(name) ,". He is ", 
age ," years ols...!")
as "actors name" from actorlist;