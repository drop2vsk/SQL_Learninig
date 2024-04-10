-- Group by

select gender,count(*) as count,min(age) as min_age ,max(age) as max_age
from parks_and_recreation.employee_demographics
group by gender;

-- Order by
select * 
from parks_and_recreation.employee_demographics
order by first_name /*<= By default Order by is using "ASC" if we want descending order we need to give expilicity "DESC" keyword*/
;