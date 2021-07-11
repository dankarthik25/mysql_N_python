-- Create a new database shirts_db
SELECT database();
CREATE DATABASE shirts_db;
USE shirts_db;

--  Table of shirt_id , article, colour, shirt_size,last_worn
-- 
CREATE TABLE shirts
      (
        shirt_id INT NOT NULL AUTO_INCREMENT,
        article VARCHAR(100),
        color VARCHAR(100),
        shirt_size VARCHAR(100),
        last_worn INT,
        PRIMARY KEY(shirt_id)
      );
DESC shirts;
-- 
-- Insert entity to table 
-- -------     
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES
    ('t-shirt', 'white', 'S', 10),
    ('t-shirt', 'green', 'S', 200),
    ('polo shirt', 'black', 'M', 10),
    ('tank top', 'blue', 'S', 50),
    ('t-shirt', 'pink', 'S', 0),
    ('polo shirt', 'red', 'M', 5),
    ('tank top', 'white', 'S', 200),
    ('tank top', 'blue', 'M', 15);
    
INSERT INTO shirts(color, article, shirt_size, last_worn) 
    VALUES('purple', 'polo shirt', 'medium', 50);
-- -----------------------------------
-- READ CHALLANGES 
-- ------------------------------------

-- Read all shirts     
SELECT * FROM shirts;
-- Read only article, colour 
SELECT article, color FROM shirts;
-- Read only Medium Shirts
SELECT * FROM shirts WHERE shirt_size='M';
-- Read all except shirt_id  which are medium is size
SELECT article,color,shirt_size,last_worn FROM shirts WHERE shirt_size='M';

-- ----------------------------------------------          
-- UPDATE CHALLANGES
-- ------------------------------------
-- Q) UPDATE all polo shirts to size L
		-- STEP 1: Read all polo shirts
			SELECT * FROM shirts WHERE article = 'polo shirt';
		-- STEP 2 Update size to L
			UPDATE shirts SET shirt_size='L' WHERE article='polo shirt'; 
   
 -- Q) Update shirt last worn 15 days ago to 0 days  
 
		-- STEP 1: Read all last worn 15 days ago
			SELECT * FROM shrits WHERE last_worn=15;
		-- STEP 2 Update all last worn 15 days to 0 days
			UPDATE shrits SET last_worn=0 WHERE last_worn=15;

 -- Q) Update all white shirt  to size XS and colour 'offwhite'
 
		-- STEP 1: Read all white shirt
			SELECT * FROM shrits WHERE last_worn=15;
 		-- STEP 2 Update all last worn 15 days to 0 days
			UPDATE shrits SET color='off white', shirt_size='XS' WHERE color ='white';

-- ----------------------------------------------          
-- DELETE CHALLANGES
-- ------------------------------------

 -- Q) Delete all shirt  last_worn 200 days 
 
		-- STEP 1: Read shirt worn 200 days ago.
			SELECT * FROM shrits WHERE last_worn=200;
 		-- STEP 2 Delete all last worn 200 days 
			DELETE FROM shrits  WHERE last_worn =200;


 -- Q) Delete all tank top
 
		-- STEP 1: Read all tank top.
			SELECT * FROM shrits WHERE article= 'tank top';
 		-- STEP 2 Delete all tank top.
			DELETE FROM shrits  WHERE article= 'tank top';
	
 -- Q) Delete all shrits not entire table 
 			DELETE FROM shrits;

 -- Q) Delete Entire table
			DROP TABLE shrits;
