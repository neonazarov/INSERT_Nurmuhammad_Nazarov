CREATE VIEW view_film_details AS
SELECT 
    f.title AS FilmTitle,
    a.first_name AS ActorFirstName,
    a.last_name AS ActorLastName,
    f.rental_rate AS RentalRate,
    f.rental_duration AS RentalDuration,
    i.store_id AS StoreID
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id
JOIN inventory i ON f.film_id = i.film_id
WHERE f.title = 'Inception';
