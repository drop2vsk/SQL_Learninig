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
    
select employee_id, first_name, occupation /* this query is failed because the employee_id is ambiguous(having more than one possible) 
	because the employee_id is present in both table*/
from employee_demographics
join employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id ;
-- correct way below
select dem.employee_id, first_name, occupation 
from employee_demographics as dem
join employee_salary as sal
	on employee_demographics.employee_id = employee_salary.employee_id