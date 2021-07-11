    SELECT title, author_lname FROM books;

    SELECT title, author_lname FROM books
    GROUP BY author_lname; -- (seperate tables are created by groups) but list of all seperate are shown

-- Q) How many Group under author last name
    SELECT author_lname, COUNT(*)
    FROM books GROUP BY author_lname;


-- Q) Show  Group under author last name
    SELECT title, author_fname, author_lname FROM books GROUP BY author_lname;

-- Q) How many books author last name is same ? Group under author last name
    SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname;

-- Q) How many books author is same ? Group under author name              
    SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;

    SELECT released_year FROM books;

    SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

    SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') AS year FROM books GROUP BY released_year;
