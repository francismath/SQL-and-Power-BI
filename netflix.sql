select *
from netflix

--The show_id is the unique id for the dataset, therefore we are going to check for duplicates
select show_id, count(*)
from netflix
group by show_id
order by show_id desc

update netflix
set director = 'NUll'
where director = 'Not Given'

select count(*)
from netflix

--check null values across columns
select count(*)-count(show_id) as showid_nulls,
	   count(*)-count(type) as type_nulls,
	   COUNT(*)-count(title) AS title_nulls,
	   COUNT(*)-count(director) AS director_nulls,
       --COUNT(*)-count(movie_cast) AS movie_cast_nulls,
       COUNT(*)-count(country) AS country_nulls,
       COUNT(*)-count(date_added) AS date_addes_nulls,
       COUNT(*)-count(release_year) AS release_year_nulls,
       COUNT(*)-count(rating) AS rating_nulls,
       COUNT(*)-count(duration) AS duration_nulls,
       COUNT(*)-count(listed_in) AS listed_in_nulls
       --COUNT(*)-count(description) AS description_nulls
from netflix;
