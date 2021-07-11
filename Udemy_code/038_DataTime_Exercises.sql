-- Q) what is the good use case of char ?
-- Q) Fill the data type of following
    CREATE TABLE invertory(
      item_name  ?,
      price      ?, -- price < 1,000,000
      quantity   ?
    );

-- Q) DATETIME VS TIMESTAMP

-- Q) Print Current TIME
-- Q) Pritn Current Date(not time)
-- Q) Current Day of the Week (Day No and Day Name)
-- Q) Current Day and time using mm/dd/yyyy formate
-- Q) Current Day and time using January 2nd at 3:15 formate

-- Q) what is the good use case of char ?
-- Used for text that we know has a fixed length, e.g., State abbreviations, abbreviated company names, sex M/F, etc.




-- Q) Fill the data type of following
    CREATE TABLE invertory(
      item_name  ?,
      price      ?, -- price < 1,000,000
      quantity   ?
    );

    CREATE TABLE inventory (
        item_name VARCHAR(100),
        price DECIMAL(8,2),
        quantity INT
    );

-- Q) DATETIME VS TIMESTAMP
-- They both store datetime information, but there's a difference in the range,
-- TIMESTAMP has a smaller range. TIMESTAMP also takes up less space.
-- TIMESTAMP is used for things like meta-data about when something is created
-- or updated.


-- Q) Print Current TIME
-- SELECT CURTIME();

-- Q) Pritn Current Date(not time)
-- SELECT CURDATE()';

-- Q) Current Day of the Week (Day No and Day Name)
-- SELECT DAYOFWEEK(CURDATE());
-- Q) Current Day and time using mm/dd/yyyy formate
-- SELECT DAYOFWEEK(NOW());

-- Q) Current Day and time using January 2nd at 3:15 formate
-- SELECT DATE_FORMAT(NOW(), '%w') + 1;
-- SELECT DAYNAME(NOW());
-- SELECT DATE_FORMAT(NOW(), '%
--
