-- Create   :
-- READ 	:
-- Update	:
insert into cats(name,age) values ('Tommy',9);
-- Delete	:
DROP TABLE cats;


CREATE TABLE IF NOT EXISTS cats
	(
		cat_id INT NOT NULL AUTO_INCREMENT,
		name VARCHAR(100)  DEFAULT 'unnamed',
        breed VARCHAR(100),
        age INT  DEFAULT 99,
        PRIMARY KEY (cat_id)
	);

INSERT INTO cats(name, breed, age)
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
-- -----------------------------
--  READ
-- ------------------------------
	--  Q) Read columbus from table or Select columbs from table
	-- SELECT * FROM <table_name>

	-- Q) WHICH ENTRY should be read or searched
    -- SELECT * FROM <table_name> WHERE <column_name> = constrains

    -- Q) Filter where cat_id = age
    -- SELECT * FROM cats WHERE cat_id=age;

-- ---------------------
--  Aliases (Change Column Name )
-- ----------------------
	-- SELECT cat_id AS id, name FROM cats;

-- -----------------------------
--  UPDATE
-- ------------------------------
	-- Q) How do we alter existing data ?
	-- UPDATE <table_name> SET <column_1>='constrain' WHERE <colunm_2> = 'condition'
	-- eg :

-- NOTE : Try SELECTING UPDATE (1st Confirm data by select) then Update
-- UPDATE cats SET age=14 WHERE name='Misty';
-- UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';

-- Eg: 	Change Jackson's to Jack,
		-- Ringo's breed to 'British Shorthair'
        -- Update both Maine Coons age to 12
    UPDATE cats SET name='Jack' WHERE name='Jackson';
    UPDATE cats SET name='Jack' WHERE name='Jackson';
    UPDATE cats SET breed='British Shorthair' WHERE name='Ringo';
    UPDATE cats SET age=12 WHERE breed='Maine Coon';

-- -----------------
-- DELETE
-- ---------------
-- syntax : DELETE FROM <table_name> WHERE column= condition
		-- Q) What will this command will do --
					-- DELETE FROM cats;
        -- A) It will delete entire table

	-- Eg: delete all 4 years cats,
    --     whoes age is same as their cat_id
    --  A) DELETE FROM cats WHERE age=4;

     -- Eg: DELETE WHERE cat_id = age;
