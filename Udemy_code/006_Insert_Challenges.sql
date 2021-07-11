-- Create a table (people) consist of first_name(max 20 char) last_name(max 20 char), age 

CREATE TABLE people(
	first_name VARCHAR(20),
    last_name VARCHAR(20),
    age int);
 INSERT INTO people(first_name,last_name,age) VALUES ('Tina','Belher',13);
 INSERT INTO people(last_name,first_name,age) VALUES ("Belher","Bob",42);
 INSERT INTO people(first_name,last_name,age) 
 VALUES ("Linda","Belcher",45),("Phillip","Frond",38),("Calvin","Fishoeder",70);
 
 DROP TABLE people;
    