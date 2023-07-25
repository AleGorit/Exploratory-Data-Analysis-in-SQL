--DATA CLEANING
use HR_Portfolio_Project

select *
from ['Human_Resources']

alter table ['Human_Resources']
drop column id

--describe the data types
exec sp_help ['Human_Resources']

--remove the NULL
UPDATE ['Human_Resources']
SET termdate = '0000-00-00'
WHERE termdate is NULL;

--calculating age

alter table ['Human_Resources']
ADD age INT;

UPDATE ['Human_Resources']
set age=DATEDIFF(YEAR,birthdate,CURRENT_TIMESTAMP);

select birthdate, age
from  ['Human_Resources']

--EXPLORATION AND DATA ANALYSIS
select *
from ['Human_Resources']

--Gender breakdown of employees in the company

select gender, count(*) as gender_count
from ['Human_Resources']
where termdate='0000-00-00'
and age >=18
group by gender;

--race breakdown of employees in the company

select race, count(*) as race_count
from ['Human_Resources']
where termdate='0000-00-00'
and age>=18
group by race
order by race_count;

--age distribution of employees

select
	min(age) as youngest,
	max(age) as oldest
from ['Human_Resources']

SELECT
    CASE
        WHEN age >= 18 AND age <= 30 THEN '18-30'
        WHEN age >= 31 AND age <= 40 THEN '31-40'
        WHEN age >= 41 AND age <= 50 THEN '41-50'
        WHEN age >= 51 AND age <= 60 THEN '51-60'
        ELSE '61+'
    END AS age_group,
    COUNT(*) AS count
FROM ['Human_Resources']
WHERE age >= 18
    AND termdate = '0000-00-00'
GROUP BY
    CASE
        WHEN age >= 18 AND age <= 30 THEN '18-30'
        WHEN age >= 31 AND age <= 40 THEN '31-40'
        WHEN age >= 41 AND age <= 50 THEN '41-50'
        WHEN age >= 51 AND age <= 60 THEN '51-60'
        ELSE '61+'
    END
ORDER BY
    CASE
        WHEN age >= 18 AND age <= 30 THEN '18-30'
        WHEN age >= 31 AND age <= 40 THEN '31-40'
        WHEN age >= 41 AND age <= 50 THEN '41-50'
        WHEN age >= 51 AND age <= 60 THEN '51-60'
        ELSE '61+'
    END;

--employees in HQ vs remote employees

select location, count(*) as loc_count
from ['Human_Resources']
where termdate='0000-00-00'
and age>=18
group by location
order by loc_count;

--gender distribution in departments and job titles

select gender, department, count(*) as count
from ['Human_Resources']
where termdate='0000-00-00'
and age>=18
group by department, gender
order by department;

-- distribution of job titles across the company
select jobtitle, count(*) as count
from ['Human_Resources']
where termdate='0000-00-00'
and age>=18
group by jobtitle
order by jobtitle;

--What is the distribution of employees across locations by city and state
select location_state, count(*) as count
from ['Human_Resources']
where termdate='0000-00-00'
and age>=18
group by location_state
order by  count;

