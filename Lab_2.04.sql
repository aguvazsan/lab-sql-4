USE sakila;

SELECT * FROM film;

### Instructions

-- 1. Get film ratings.

SELECT DISTINCT(rating) FROM film;

-- 2. Get release years.

SELECT DISTINCT(release_year) FROM film;

-- 3. Get all films with ARMAGEDDON in the title.

SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%';

-- 4. Get all films with APOLLO in the title

SELECT * FROM film
WHERE title LIKE '%APOLLO%';

-- 5. Get all films which title ends with APOLLO.

SELECT * FROM film
WHERE title LIKE '%APOLLO';

-- 6. Get all films with word DATE in the title.

SELECT * FROM film
WHERE title LIKE '%DATE%';

-- 7. Get 10 films with the longest title.

SELECT *
FROM film
ORDER BY LENGTH(title) DESC
LIMIT 10;

-- 8. Get 10 the longest films.

SELECT *
FROM film
ORDER BY length DESC
LIMIT 10;

-- 9. How many films include **Behind the Scenes** content?

SELECT COUNT(*)  AS film_behind 
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

-- 10. List films ordered by release year and title in alphabetical order.

SELECT *
FROM film
ORDER BY release_year AND title
DESC;