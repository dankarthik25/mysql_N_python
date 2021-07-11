CREATE TABLE cats( 
	name varchar(100),
    age int
    );
INSERT INTO cats(name,age)
VALUES('This is some text blah blah blah blah blah text text text something about cats lalalalal meowwwwwwwwwww', 10);

-- ABOVE Statement will give Warnings
-- TO know warning
SHOW WARNINGS; -- warning (Data truncated)

-- Q) other warring ?
    -- mixed up data type 
    -- eg: INSERT INTO cats(name,age) VALUES("Lina",'asddd'); -- warning(Incorrecr integer value
    
    
    
-- DROP TABLE cats