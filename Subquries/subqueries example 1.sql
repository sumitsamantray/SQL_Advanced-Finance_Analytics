
# select a movie with highest imdb_rating
select * from moviesdb. movies
where imdb_rating=(select max(imdb_rating) from moviesdb.movies)
			    -- adding subqueries