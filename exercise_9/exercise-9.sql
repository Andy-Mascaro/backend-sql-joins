SELECT
  film.title
FROM
  film
  LEFT JOIN inventory ON film.film_id = inventory.film_id
  LEFT JOIN rental ON inventory.inventory_id = rental.inventory_id
WHERE
  rental.rental_date IS null
  AND inventory.inventory_id IS NOT NULL;
