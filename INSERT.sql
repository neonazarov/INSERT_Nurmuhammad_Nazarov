BEGIN TRANSACTION;

-- Insert film
INSERT INTO film (title, rental_rate, rental_duration)
VALUES ('Inception', 4.99, 2);

-- Assuming 'Inception' gets a film_id of 1, adjust based on your DB's auto-increment value
-- Insert actors
INSERT INTO actor (first_name, last_name)
VALUES ('Leonardo', 'DiCaprio'),
       ('Joseph', 'Gordon-Levitt'),
       ('Ellen', 'Page');

-- Insert film_actor links
-- Adjust actor_ids based on the auto-increment values assigned to the new actors
INSERT INTO film_actor (actor_id, film_id)
VALUES ((SELECT actor_id FROM actor WHERE first_name = 'Leonardo' AND last_name = 'DiCaprio'), (SELECT film_id FROM film WHERE title = 'Inception')),
       ((SELECT actor_id FROM actor WHERE first_name = 'Joseph' AND last_name = 'Gordon-Levitt'), (SELECT film_id FROM film WHERE title = 'Inception')),
       ((SELECT actor_id FROM actor WHERE first_name = 'Ellen' AND last_name = 'Page'), (SELECT film_id FROM film WHERE title = 'Inception'));

-- Add movie to store's inventory, assuming store_id of 1
INSERT INTO inventory (film_id, store_id)
VALUES ((SELECT film_id FROM film WHERE title = 'Inception'), 1);

COMMIT;
