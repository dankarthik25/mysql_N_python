
CREATE TABLE IF NOT EXISTS cat3
	(
		name VARCHAR(100) DEFAULT 'unnamed',
        age INT DEFAULT 99
	);

-- Above statement by defalut it will take
	-- name as 'unname'
	-- age  as 99
DESC cat3;
-- Field	Type  					Null		Key		Default
-- -------------------------------------------------------
-- 'name'	'varchar(100)'	'YES' 	''		'unnamed'	''
-- 'age'	'int(11)'				'YES' 	''		'99'		''

-- HERE default is set(unnamed,99) but it does't mean  NULL wil not exists
-- eg
INSERT INTO cat3 (name, age) VALUES ("Montana",NULL); -- NULL is accepted

DROP TABLE  catS3;
-- ----------------------------------------
-- SET DEFAUT VALUE AND (NOT NULL)
-- -------------------------------------
CREATE TABLE cat4 (
	name VARCHAR(100) NOT NULL DEFAULT "unnamed",
    age INT NOT NULL DEFAULT 99
    );
INSERT INTO cat4 (name, age) VALUES ("Montana",NULL); -- NULL is accepted
-- Show error : Null is not accepted in cat4 table

DESC cat4;
-- Field	Type  			Null	Key		Default
-- -------------------------------------------------------
-- 'name'	'varchar(100)'	'NO' 	''		'unnamed'	''
-- 'age'	'int(11)'		'NO' 	''		'99'		''

DROP TABLE cat4;
