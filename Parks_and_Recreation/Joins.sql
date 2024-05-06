-- Joins

/* JOIN aka INNER JOIN 
	Selects records that have matching values in both tables igore the mismatched one */
select * 
from parks_and_recreation.employee_demographics
Join parks_and_recreation.employee_salary 
	on employee_demographics.employee_id = employee_salary.employee_id;
    
select * 
from parks_and_recreation.employee_demographics as dem
Join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
select employee_id, first_name, occupation /* this query is failed because the employee_id & first_name are ambiguous(having more than one possible) 
	because the employee_id & first_name are present in both table*/
from employee_demographics
join employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id ;
    
-- correct way in below
select dem.employee_id, dem.first_name, occupation 
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
-- outer join 
/* Outer joins
Outer joins are joins that return matched values and unmatched values from either or both tables. 
There are a few types of outer joins:

LEFT JOIN returns only unmatched rows from the left table, as well as matched rows in both tables.LEFT JOIN is also refered to as OUTER LEFT JOIN.
RIGHT JOIN returns only unmatched rows from the right table , as well as matched rows in both tables.RIGHT JOIN is also refered to as OUTER RIGHT JOIN.
FULL OUTER JOIN returns unmatched rows from both tables,as well as matched rows in both tables.FULL OUTER JOIN is also refered to as OUTER JOIN.*/

-- Left join
select * 
from parks_and_recreation.employee_demographics as dem
left Join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id; 
    
-- Right join
select * 
from parks_and_recreation.employee_demographics as dem
right Join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
-- full outer join
select * 
from parks_and_recreation.employee_demographics as dem
Full outer join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id;