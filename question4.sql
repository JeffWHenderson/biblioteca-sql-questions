------------------------------------------
-- #4. Add the book 'The Pragmatic Programmer', and add yourself as a member. Check out 'The Pragmatic Programmer'. Use your query from question 1 to verify that you have checked it out. Also, provide the SQL used to update the database.
------------------------------------------
INSERT INTO member (name) VALUES ("Jeff Henderson");
INSERT INTO book (title) VALUES ('The Pragmatic Programmer');
INSERT INTO checkout_item (member_id, book_id, movie_id)
VALUES (43, 11, null);

SELECT member.id, member.name, book.title FROM checkout_item
JOIN member ON checkout_item.member_id = member.id
LEFT JOIN book ON checkout_item.book_id = book.id
WHERE book.title = 'The Pragmatic Programmer';


/* ANSWER
--43|Jeff Henderson|The Pragmatic Programmer
*/
