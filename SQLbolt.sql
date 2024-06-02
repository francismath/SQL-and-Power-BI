create table Movies (
	Id int,
	Title varchar(100),
	Director varchar(100),
	Year int,
	Length_minutes int
)

insert into Movies (Id,Title,Director,Year,Length_minutes)
values
	(1, 'Toy Story', 'John Lasseter', 1995, 81),
	(2, 'A Bug''s Life', 'John Lasseter', 1998, 95),
	(3, 'Toy Story 2', 'John Lasseter', 1999, 93),
	(4, 'Monsters, Inc', 'Pete Docter', 2001, 92),
	(5, 'Finding Nemo', 'Andrew Stanton', 2003, 107)

select * from Movies
select Director from Movies
select Title, Director from Movies
select Title, Year from Movies