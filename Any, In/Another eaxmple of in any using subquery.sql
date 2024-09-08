-- select all movies whoes rating is greater than *any* of the marvel movies rating
SELECT 
    *
FROM
    movies
WHERE
    imdb_rating = any (SELECT 
            imdb_rating
        FROM
            movies
        WHERE
            studio = 'Marvel Studios');