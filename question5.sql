------------------------------------------
-- #5. Who has checked out more that 1 item?
------------------------------------------
SELECT member.name FROM checkout_item
JOIN member
ON checkout_item.member_id = member.id
GROUP BY member.name
HAVING COUNT (member.name) > 1;

/* ANSWER
--Anand Beck
--Frank Smith
*/
