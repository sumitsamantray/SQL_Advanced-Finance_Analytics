-- select a movie with highest and lowest imdb_rating.
-- retruned a list of value.
select * from moviesdb. movies
where imdb_rating in (
(select max(imdb_rating) from moviesdb.movies),
(select min(imdb_rating) from moviesdb.movies))
			    -- adding subqueries. 