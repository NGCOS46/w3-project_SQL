create database blockbuster;

use blockbuster;
CREATE TABLE actor (
    actor_id INT  Primary Key,
    last_date VARCHAR(40),
    last_hour VARCHAR(40),
    actor_name VARCHAR(30)
);
select*from actor;

select distinct(actor_id) from actor;

CREATE TABLE cateory (
    category_id INT Primary Key,
     name VARCHAR(30),
    last_date VARCHAR(40),
    last_hour VARCHAR(40)
);
select*from cateory;
drop table film;
CREATE TABLE film (
    film_id INT Primary Key,
	title VARCHAR(30),
	description varchar(1000000),
	release_year int,
    language_id int,
	original_language_id int,
    rental_duration	int,
    rental_rate	float,
    length int,
    replacement_cost int,
    rating	varchar(8),
    last_date VARCHAR(40),
    last_hour VARCHAR(40),
	trailers int,
	deleted_sences	 int,
	commentaries int,
	behind_the_sences int
);

select*from film;


CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY,
    film_id INT, -- Make sure this matches the data type and attributes of the film_id column in the film table (INT(11))
    last_date DATE,
    last_hour VARCHAR(40)
);

select*from inventory;


create table language(
language_id int primary key,
name varchar (30),
last_date date,
last_hour varchar(40)
)

select*from Language;

drop table old_hdd;

create table old_hdd (
title varchar (40),
release_year int,
category_id int,
actor_name varchar(40)
)

select*from old_hdd;

create table rental (
rental_id int,
rental_date date,
inventory_id int,
customer_id	int,
return_date date, 
staff_id int,
last_update date
);

select*from rental;

create table customer (
customer_id  int auto_increment primary key,
film_id int,
rental_id int);

INSERT INTO customer (rental_id, film_id)
SELECT rental_id, film_id
FROM rental, film;

select*from customer
