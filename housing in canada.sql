--view dataset
select *
from [housing price index canada]

--Check for the duplicates by looking through Ref_Date
select REF_DATE, count(*)
from [housing price index canada]
group by REF_DATE
order by REF_DATE

-- There are no duplicates

-- check null values

select count(*)-count(REF_DATE) as rd_nulls,
       count(*)-count(GEO) as geo_nulls,
	   count(*)-count(VALUE) as value_nulls
from [housing price index canada]

-- no nulls

