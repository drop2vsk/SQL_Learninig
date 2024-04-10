-- Group by

select gender,count(*) as count,min(age) as min_age ,max(age) as max_age
from parks_and_recreation.employee_demographics
group by gender;

-- Order by
select * 
from parks_and_recreation.employee_demographics
order by first_name; /*<= By default Order by is using "ASC" if we want descending order we need to give expilicity "DESC" keyword*/

select * 
from parks_and_recreation.employee_demographics
order by gender,age; /*<= Here First order by apply on gender (unique values) than the age*/

select * 
from parks_and_recreation.employee_demographics
order by age,gender; /*<= Here order by age than the gender give wrong output */

select employee_id,first_name,last_name,age,gender,birth_date
from parks_and_recreation.employee_demographics
order by 5;  /*<= Here order by using column position instead of column name */