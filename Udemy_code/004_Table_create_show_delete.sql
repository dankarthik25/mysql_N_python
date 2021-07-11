
CREATE DATABASE cat_app;
use cat_app;	
CREATE TABLE cats( 
	name varchar(100),
    age int
    );
    
 -- CHECK if created a <table_name>
 SHOW TABLES;
 SHOW COLUMNS FROM cats;
 DESC cats;
 
--  Delete a table
--  DROP TABLE <table_name>; 
 DROP TABLE cats;

-- TASK 
--  Create a pastries of tables ( name(max 50 char), quantity)   
--  Inspect your table colums
--  Delete your table
CREATE TABLE pastries(
	name VARCHAR(50),
	quantity int
    );
    
SHOW TABLES;
DROP TABLE pastries;