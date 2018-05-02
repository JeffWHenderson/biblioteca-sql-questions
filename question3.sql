------------------------------------------
-- #3. What books and movies aren't checked out?
------------------------------------------
SELECT book.title FROM book
LEFT JOIN checkout_item
ON checkout_item.book_id = book.id
WHERE checkout_item.member_id is null;

SELECT movie.title FROM movie
LEFT JOIN checkout_item
ON checkout_item.movie_id = movie.id
WHERE checkout_item.member_id is null;


/* ANSWER
--Fellowship of the Ring
--1984
--Tom Sawyer
--Catcher in the Rye
--To Kill a Mockingbird
--Domain Driven Design

--Thin Red Line
--Crouching Tiger, Hidden Dragon
--Lawrence of Arabia
--Office Space
*/
