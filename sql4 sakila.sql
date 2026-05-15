use sakila;

select * from actor;

select * from film_actor;

select * from film;

/*
-- select actor id name  and film id , full name
-- get the filmm id film title and filmm title and actor id 
-- find the acctor id and actor name and movie his name  work 
only for the movie whos lenth then greater then 120
- get actor id  acotr name and total movie of name his work
get the film title and number of actor that have work that in film
*/

select 
a.actor_id,
concat(a.first_name,' ',a.last_name) as full_name,
fa.film_id
from actor as a
join film_actor as fa
on a.actor_id = fa.actor_id;



select
f.film_id,f.title, fa.actor_id from film as f
join film_actor as fa
on f.film_id = fa.film_id;




