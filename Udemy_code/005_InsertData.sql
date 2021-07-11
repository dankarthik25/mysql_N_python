CREATE DATABASE cat_app;
use cat_app;
CREATE TABLE cats(
	name varchar(100),
    age int
    );
INSERT INTO cats (name, age)
VALUES ("Jeston",7);

INSERT INTO cats(name,age) VALUES ("Tommy" ,9);
INSERT INTO cats
			(name,
       age)
VALUES		("Jerry",
						6);
-- ORDER MATTERS
INSERT INTO cats(age,name) VALUES (12, "Victoria") ;

-- multiple insert
INSERT INTO cats (name,age)
VALUES ( "Charlie",10),("Sadie",3),("Lazy Bear",1);


-- SHOW TABLES;--// Name of tables
-- SHOW TABLE SPREAD SHEEET
SELECT * FROM cats;

-- DROP TABLE cats;
