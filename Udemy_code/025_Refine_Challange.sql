-- Q0 Select All story Collection from Titles: contain stories

    SELECT title FROM books WHERE title LIKE '%stories%';
-- Q) Find longest Book 
     
    SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
-- Q) Print Summary containing titile and year for 3 most recent books     
    SELECT 
        CONCAT(title, ' - ', released_year) AS summary 
    FROM books ORDER BY released_year DESC LIMIT 3;

-- Q) Find all books with an author_lname containing a space(" ")      
    SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

-- Q) Find 3 book with Lowest Stock, Show title, year stock     
    SELECT title, released_year, stock_quantity 
    FROM books ORDER BY stock_quantity LIMIT 3;

-- Q) Print title and author_lname, Sorted by author_lname and the title     
    SELECT title, author_lname 
    FROM books ORDER BY author_lname, title;
-- OR--     
    SELECT title, author_lname 
    FROM books ORDER BY 2,1;
-- Q) Add "My Favorite Author is" and author last name and show
    SELECT
        CONCAT(
            'MY FAVORITE AUTHOR IS ',
            UPPER(author_fname),
            ' ',
            UPPER(author_lname),
            '!'
        ) AS yell
    FROM books ORDER BY author_lname;
    