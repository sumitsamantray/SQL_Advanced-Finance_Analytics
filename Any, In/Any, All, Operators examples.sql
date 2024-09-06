# select actors who acted in any of these movies 
# (101, 110, 121)
# use moviesdb
select * from actors where actor_id in(
SELECT actor_id from movie_actor where movie_id in 
(101, 110, 121))