--  Q) calculate the average realeased year across all books
SELECT AVG(released_year) FROM books;
-- Q) Calcuate the average stock quantity for books realeased in the same year
SELECT AVG(stock_quantity) FROM books GROUP BY author_lname, author_fname;

--Q) Calcuate  avg page writen by author
SELECT Avg(pages) FROM books GROUP BY author_lname, author_fname;
