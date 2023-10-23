INSERT INTO film (title, rental_rate, rental_duration)
VALUES ('Forsage', 4.99, 14);


INSERT INTO actor (first_name, last_name)
VALUES ('Vin', 'Diesel'),
       ('Paul', 'Walker'),
       ('Michelle', 'Rodriguez');


SELECT actor_id
FROM actor
WHERE first_name IN ('Vin', 'Paul', 'Michelle')
  AND last_name IN ('Diesel', 'Walker', 'Rodriguez');


INSERT INTO film_actor (film_id, actor_id)
VALUES
  (1, 1), 
  (1, 2),
  (1, 3); 


INSERT INTO inventory (film_id, store_id)
SELECT film_id, Z
FROM film
WHERE title = 'Forsage';
