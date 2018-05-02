------------------------------------------
-- #1. Who checked out the book 'The Hobbit'?
------------------------------------------
SELECT member.name, book.title FROM checkout_item
JOIN member ON checkout_item.member_id = member.id
LEFT JOIN book ON checkout_item.book_id = book.id
where book.title = 'The Hobbit';


/* ANSWER
--Anand Beck|The Hobbit
*/
