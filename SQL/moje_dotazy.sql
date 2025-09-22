SELECT COUNT(rating) FROM film
WHERE rating <> 'R';

SELECT COUNT(replacement_cost) FROM film
WHERE replacement_cost >= 15;

SELECT COUNT(rental_rate) FROM film
WHERE rental_rate >=3 AND rating = 'R';

SELECT last_name, email FROM customer
WHERE last_name = 'Fisher';

SELECT description FROM film
WHERE title = 'Blanket Beverly';

SELECT COUNT(length) FROM film
WHERE length >= 60 AND rating = 'R';