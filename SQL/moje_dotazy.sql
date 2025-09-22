SELECT staff_id, SUM(amount) FROM payment
GROUP BY staff_id;


SELECT COUNT(staff_id) FROM payment
GROUP BY staff_id;