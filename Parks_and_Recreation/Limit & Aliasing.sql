-- limit & aliasing

-- limit
select * 
from parks_and_recreation.employee_demographics
limit 5; -- Here first 5 records are return

select * 
from parks_and_recreation.employee_demographics
order by age desc
limit 5; -- Here first 5 oldest persons records are return

select * 
from parks_and_recreation.employee_demographics
limit 2,4; -- Here as 2(starting point (exclude)),4(no of records need to return)

select * 
from parks_and_recreation.employee_demographics
limit 4 offset 2; -- Here it is works as same as above return only 4 records, start on record 3 (OFFSET 2(exclude))

-- Aliasing
select gender, avg(age) AS average_age
from parks_and_recreation.employee_demographics
group by gender
having average_age > 40; -- Now the avg(age) column heading is changed in to average_age and also no need to intentionally give the AS keywork, it works fine as below query

select gender, avg(age) average_age
from parks_and_recreation.employee_demographics
group by gender
having average_age > 40 -- returing same results



/*select gender, avg(age) as 'average age' -- Error need to check because of aliasing gives under "", ''
from parks_and_recreation.employee_demographics
group by gender
having 'average age' > 40;

select gender, avg(age) as "average age"
from parks_and_recreation.employee_demographics
group by gender
having "average age" > 40;*/ 
