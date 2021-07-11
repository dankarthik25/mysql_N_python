-- there can be two entry same  like
CREATE TABLE IF NOT EXISTS cat3
	(
		name VARCHAR(100) DEFAULT 'unnamed',
        age INT DEFAULT 99
	);
INSERT INTO cat3 (name,age) VALUES ("Tom",5),("Tom",5),("Tom",5);

drop table cat3;

-- -------------------

CREATE TABLE IF NOT EXISTS unique_cats
	(
		cat_id INT NOT NULL,
		name VARCHAR(100)  DEFAULT 'unnamed',
        age INT  DEFAULT 99,
        PRIMARY KEY (cat_id)
	);
DESC unique_cats;

-- Field				Type  				Null		Key		Default
-- -------------------------------------------------------
-- 'cat_id'		'int(11)'				'NO'		PRI		NULL		
-- 'name'			'varchar(100)'	'YES' 	''		'unnamed'	''
-- 'age'			'int(11)'				'YES' 	''		'99'		''

INSERT INTO unique_cats (cat_id, name,age) VALUES (1,"Montana",5),(2,"Louis",8);
INSERT INTO unique_cats (cat_id, name,age) VALUES (1,"Jerry",5); -- Error : cat_id is unique

CREATE TABLE IF NOT EXISTS unique_cats2
	(
		cat_id INT NOT NULL AUTO_INCREMENT,
		name VARCHAR(100)  DEFAULT 'unnamed',
        age INT  DEFAULT 99,
        PRIMARY KEY (cat_id)
	);
