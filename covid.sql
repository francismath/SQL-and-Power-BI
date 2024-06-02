select *
from CovidDeath
where continent is not null
order by 3,4

select Location, Date, Total_cases, new_cases, total_deaths,population
from CovidDeath
order by 1,2

--Looking at total cases vs total deaths

select Location, Date, Total_cases, total_deaths, (total_deaths/total_cases)*100 as deathpercentage
from CovidDeath
where location like '%states%'
order by 1,2

--Looking at Total cases vs population
select Location, Date, Total_cases, population, (total_cases/population)*100 as contractpercentage
from CovidDeath
where location like '%states%'
order by 1,2

--Looking at countries with highest infection rate compared to population
select Location, Max(Total_cases) as HighestInfectionCount, population, Max(total_cases/population)*100 as PercentPopulationInfected
from CovidDeath
--where location like '%china%'
group by location, population
order by PercentPopulationInfected

--Let's break things down by continent

select Location, Max(cast(total_deaths as int)) as HighestDeathCount
from CovidDeath
--where location like '%china%'
where continent is null
group by location
order by HighestDeathCount desc

select continent, Max(cast(total_deaths as int)) as HighestDeathCount
from CovidDeath
--where location like '%china%'
where continent is not null
group by continent
order by HighestDeathCount desc

--showing countries with Highest death count per population
select Location, Max(cast(total_deaths as int)) as HighestDeathCount
from CovidDeath
--where location like '%china%'
where continent is not null
group by location
order by HighestDeathCount desc

--showing continents with the highest death count per population 
select continent, Max(cast(total_deaths as int)) as HighestDeathCount
from CovidDeath

--where location like '%china%'
where continent is not null
group by continent
order by HighestDeathCount desc

--global numbers

select Date, sum(new_cases) as TotalNewCases, sum(new_deaths), sum(new_deaths)/sum(new_cases)*100 as DeathRate-- population, (total_cases/population)*100 as contractpercentage
from CovidDeath
where continent is not null
group by date 
order by 1,2