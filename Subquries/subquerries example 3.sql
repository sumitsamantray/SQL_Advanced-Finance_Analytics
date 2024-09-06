-- it gives an error because we are not using where 
select name,
year(
curdate())-birth_year as age
from moviesdb.actors
where age > 40;

-- while we are using as actors age table

select * from
(select name,
year(
curdate())-birth_year as age
from moviesdb.actors) as actors_age_table
where age > 40
