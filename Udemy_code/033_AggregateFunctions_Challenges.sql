-- Q) Print out how many books were released in each year

-- Q) Total no of books in stock

-- Q) Find avg realeased year for each author

-- Q) Find full name of author who wrote the longest books

-- Q)  Find avg pages and no.of book in each released_year


-- Q) Print no.of books in the database
SELECT COUNT(*) FROM books;

-- Q) Print out how many books were released in each year
SELECT COUNT(*) FROM books GROUP BY released_year;
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

 -- Q) Total no of books in stock
SELECT Sum(stock_quantity) FROM BOOKS;

-- Q) Find avg realeased year for each author
SELECT AVG(released_year) FROM books GROUP BY author_lname, author_fname;
SELECT author_fname, author_lname, AVG(released_year) FROM books GROUP BY author_lname, author_fname;

 -- Q) Find full name of author who wrote the longest books
SELECT CONCAT(author_fname, ' ', author_lname) FROM books
WHERE pages = (SELECT Max(pages) FROM books);
 -- OR
SELECT CONCAT(author_fname, ' ', author_lname) FROM books
ORDER BY pages DESC LIMIT 1;
SELECT pages, CONCAT(author_fname, ' ', author_lname) FROM books
ORDER BY pages DESC;

 -- Q)  Find avg pages and no.of book in each released_year
SELECT released_year AS year,
    COUNT(*) AS '# of books',
    AVG(pages) AS 'avg pages'
FROM books
    GROUP BY released_year;
