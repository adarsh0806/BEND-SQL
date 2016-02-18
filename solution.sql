1.  SELECT first_name, movies.title
    FROM actors JOIN movies ON actors.actor_id = movies.actor_id

2.  SELECT title, actors.first_name, actors.last_name
    FROM movies JOIN actors ON actors.actor_id = movies.actor_id AND release_year > 2013

3.  SELECT title, actors.first_name, actors.last_name
    FROM movies JOIN actors ON actors.actor_id = movies.actor_id ORDER BY release_year

4.  SELECT title, act ors.first_name, actors.last_name
    FROM movies JOIN actors ON actors.actor_id = movies.actor_id AND genre = “action”
    AND release_year > 2002

5.  SELECT first_name, last_name
    FROM actors JOIN movies ON actors.actor_id = movies.actor_id
    AND movies.genre = “action” GROUP BY actor_id HAVING COUNT(actors.movie_id) > 0

6.  SELECT first_name, last_name
    FROM actors LEFT OUTER JOIN movies ON actors.actor_id = movies.actor_id

7.  SELECT name
    FROM movies left outer JOIN actors ON movies.actor_id = actors.actor_id
