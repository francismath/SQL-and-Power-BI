/*
Energy Data Exploration 

Skills used: Joins, CTE's, Temp Tables, Windows Functions, Aggregate Functions, Creating Views, Converting Data Types

*/
Select *
From energy.dbo.energyEcono
Where iso_code is not null 
order by 1, 2

--select population and gdp 
Select country, year, population, gdp
From energy.dbo.energyEcono
Where iso_code is not null 
order by 1, 2

--countries with gdp per capita in 2018
Select country, population, (cast(gdp as float)/population) as gdp_per_capita
From energy.dbo.energyEcono
Where iso_code is not null and year=2018
order by 1, 2

--countries with highest electricity generated from biofuels per capita
Select country, max(biofuel_electricity) as max_biofule_electricity 
From energy.dbo.energyEcono
Where iso_code is not null 
group by country
order by max_biofule_electricity desc

--continents with highest electricity generated from biofuels per capita
Select country, max(biofuel_electricity) as max_biofule_electricity
From energy.dbo.energyEcono
Where iso_code is not null 
group by country
order by max_biofule_electricity desc

--share of electricity generation that comes from biofuels
select country, max(biofuel_share_elec) as max_biofuel_share
from energy.dbo.energyEcono
Where iso_code is not null 
group by country
order by max_biofuel_share desc

--carbon intensity of electricity production
select country, year, carbon_intensity_elec
from energy.dbo.energyEcono
Where country like '%hina' 
--group by country
order by year

--continents with the highest carbon intensity of elec production
select country, max(carbon_intensity_elec) as max_carbon_intensity_elec
from energy.dbo.energyEcono
Where iso_code is null 
group by country
order by max_carbon_intensity_elec desc


