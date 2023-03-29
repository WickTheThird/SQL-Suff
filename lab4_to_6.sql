#USE sakila_bumbuf2db;
# select * from actor, film_actor; # lab4 q1

#USE world_bumbuf2db;

#select * from city, country;
#select * from country, countrylanguage; #lab4 q1.2

#USE sakila_bumbuf2db;
#select first_name from actor, film_actor
#where actor.actor_id = film_actor.actor_id; # lab4 q2.1

#select distinct first_name from actor, film_actor
#where (actor.actor_id = film_actor.actor_id) and first_name = "John"; # lab4 q2.2

# this is lab 5 task 1
#USE sakila_bumbuf2db;

#select amount, MIN(amount) as MinPay from payment;
#select amount, MAX(amount) as MaxPay from payment;
#select payment_date, MAX(amount) as MaxAmount, min(amount) as MinAMount, AVG(amount) as AVGAmount, sum(amount) as TotalSum from payment
#where payment_date like "%2006-10%";

#select distinct payment_date, sum(amount) as TotalSum from payment
#group by day(payment_date);

#select distinct payment_date, sum(amount) as TotalSum from payment
#group by year(payment_date)
#order by year(payment_date) desc;

#select count(film_actor.film_id), actor.first_name, film.film_id from actor, film, film_actor
#where film.film_id = film_actor.film_id and film_actor.actor_id = actor.actor_id
#group by film.film_id;

#use world_bumbuf2db;

#select code, name, population from country
#where population = (select max(population) from country);

#select region, population from country
#group by region desc;

#select city.name, city.population from country join city
#where country.code = city.CountryCode and city.Population = (select max(city.population) from city);

# this task 2
#use world_bumbuf2db;

#select distinct region, Population from country
#where country.population = (select distinct min(population) from country)
#group by region;


#select name, language, percentage, population*percentage as Speakers from country, countrylanguage
#where countrylanguage.countrycode = country.code and percentage > (select avg(percentage) from countrylanguage)
#group by percentage desc;

#USE sakila_bumbuf2db;

#select count(first_name), first_name, film.film_id from actor, film_actor, film
#where film_actor.film_id = film.film_id and film_actor.actor_id = actor.actor_id
#group by film_actor.film_id;

# lab 6
#use world_bumbuf2db;

#select city.Name, country.Name from city, country
#where city.Name like "a%"; 

#select language, sum(population*countrylanguage.Percentage) as Speakers from country, countrylanguage
#where country.Code = countrylanguage.CountryCode and (select sum(population*percentage) from country, countrylanguage) > 1000000
#group by language desc;

# use classicmodels_bumbuf2db;



