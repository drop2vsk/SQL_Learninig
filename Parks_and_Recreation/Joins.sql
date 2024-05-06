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
    
-- Outer joins
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
    
/* full outer join
select * 
from parks_and_recreation.employee_demographics as dem
Full outer join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id; 
    ## this is not supported by MySql,it does not explicitly support a FULL OUTER JOIN. 
    Instead, we can achieve it by combining a LEFT JOIN, a RIGHT JOIN, and a UNION operator.
    MS SQL table and an Oracle table are able to use the full outer join*/

-- Example
SELECT * 
FROM employee_demographics t1
LEFT JOIN employee_salary t2 
	ON t1.employee_id = t2.employee_id
UNION
SELECT * 
FROM employee_demographics t1
RIGHT JOIN employee_salary t2 
	ON t1.employee_id = t2.employee_id;
    
-- Self Joins
select *
from employee_salary sal1
Join employee_salary sal2
	ON sal1.employee_id + 1 = sal2.employee_id;

-- Joining multiple table together
select *
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
select *
from parks_departments;

select *
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
right join parks_departments as par
	on sal.dept_id = par.department_id;