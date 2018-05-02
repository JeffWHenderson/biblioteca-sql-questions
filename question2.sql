------------------------------------------
-- #2. How many people have not checked out anything?
------------------------------------------
SELECT count(member.id) FROM member
LEFT JOIN checkout_item ON checkout_item.member_id = member.id
WHERE (checkout_item.movie_id is null)
AND (checkout_item.book_id is null);


/* ANSWER
-- 37
*/
