-- ------------------------
-- COUNT
-- -------------------------
-- Q) Count No. of books in table
    SELECT COUNT(*) FROM books;

 -- Q) Count No of author_fname (may be repeted

    SELECT COUNT(author_fname) FROM books;
 -- Q) Count No of author_fname (distinct)
    SELECT COUNT(DISTINCT author_fname) FROM books;
 -- Q) Count No of author_lname (distinct)
    SELECT COUNT(DISTINCT author_lname) FROM books;

-- Q) Count No of author(fname,lname) (distinct)
    SELECT COUNT(DISTINCT author_lname, author_fname) FROM books;

-- Q) How many titles contain "the"

    SELECT title FROM books WHERE title LIKE '%the%';

    SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

-- AVG returns the average of a list
-- COUNT returns the number of elements of a list
-- SUM returns the total of a list
-- MAX returns the maximum value in a list
-- MIN returns the minimum value in a list
