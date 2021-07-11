

-- CHAR is fixed lenght the remaining space with " " or it pad-right side memory is stored as spacess
   -- when retriving in it remove the padding


--    The DECIMAL data type is a fixed-point type and calculations are exact. In MySQL, the DECIMAL type has several synonyms: NUMERIC, DEC, FIXED. The integer types also are exact-value types.
--
-- The FLOAT and DOUBLE data types are floating-point types and calculations are approximate. In MySQL, types that are synonymous with FLOAT or DOUBLE are DOUBLE PRECISION and REAL.
-- Float and Double can store large data at min memory space with cost of PRECISION

--  Data Type       Memory      Precision
--  Float           4 Bytes     ~7 digits
--  Double          8 Bytes     ~15 digits


-- ------------------------------
-- DATE TIME
-- -----------------------------

CREATE TABLE people (name VARCHAR(100), birthdate DATE, birthtime TIME, birthdt DATETIME);

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

SELECT * FROM people;


-- ----------------------------------------
--  CURRENT TIME
-- ------------------------------------
CURDATE() -- gives current DATE
CURTIME() -- give current time
NOW()     -- give current DATETIME

INSERT INTO people (name, birthdate,birthtime,birthdt) VALUES
('Microware',CURDATE(),CURTIME,NOW());
