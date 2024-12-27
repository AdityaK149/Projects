select * from movies where imdb_rating between 6 and 8;

select * from movies where release_year in (2018,2019,2022);

select * 
from movies 
where industry ='bollywood'
order by imdb_rating;

# Print all movies in the order of their release year (latest first)
select * from movies 
order by release_year desc;

#All movies released in the year 2022

select * from movies 
where release_year = 2022;

#Now all the movies released after 2020
select * from movies
where release_year >= 2020;

#All movies after the year 2020 that have more than 8 rating
select * from movies
where release_year >'2020' and imdb_rating >'8';

# Select all movies that are by Marvel studios and Hombale Films

select * from movies 
where studio in ( 'Hombale Films' , 'Marvel studios');

# Select all THOR movies by their release year
select  title , release_year
from movies 
where title like '%thor%' order by release_year asc;

#Select all movies that are not from Marvel Studios

select * 
from movies
where studio!= 'marvel studios';

select 
avg(imdb_rating) as avg_rating,
MIN(imdb_rating) as min_rating,
MAX(imdb_rating) as max_rating
 from movies
 where studio='Marvel studios';

# using Group by

select studio, count(*) as cnt
from movies 
group by studio
order by cnt desc;

select  studio,count(*) as cnt,
round(avg(imdb_rating)) as avg_rating
from movies
group by studio 
order by avg_rating desc;

# How many movies were released between 2015 and 2022
select title, release_year
 from movies 
 where release_year between '2015' and '2022';
 
#. Print the max and min movie release year
select 
min(release_year) as min_release_year,
max(release_year) as max_release_year
from movies;

#Using Having clause 
# print all the years where more than  2 movies were released

select release_year , count(*)
from movies
group by release_year
having count(*)>2
order by count(*) desc;


select *, year(curdate())-birth_year as age from actors;

select *, (revenue - budget) as profit from financials;



# usage of case
select *,
 case 
 when unit = "thousand" then revenue/1000
 when unit = "Billions" then revenue*1000
 when unit = "Millions" then revenue
 end as reveune_mln
 from financials;
 
 #Write SQL queries for the following,

#1. Print profit % for all the movies
select *, (revenue - budget)/budget *100 as profit_Per from financials;
#OR
select 
        *, 
    (revenue-budget) as profit, 
    (revenue-budget)*100/budget as profit_pct 
   from financials


 
 

















 
 
 