use employee;

INSERT INTO actorlist VALUES 
(4,"SK",43),(5,"Pawan Kalyan",60);

SELECT * FROM actorlist;

SELECT * FROM actorlist WHERE name="SK";

UPDATE actorlist set age=40 WHERE id=4;

DELETE FROM actorlist;

SET SQL_SAFE_UPDATES=1;