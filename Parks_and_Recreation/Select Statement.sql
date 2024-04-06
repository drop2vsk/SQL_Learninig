-- data manipulation language (DML) command - SELECT
Select * 
from parks_and_recreation.employee_demographics; -- we are select the all record from parks_and_recreation<Schema>.employee_demographics<Table>

SELECT first_name, 
last_name, 
birth_date, /* select required column from the table*/
age, 
(60 - age) as 'time for Retirement' /* Do reqired math 'PEMDAS is the order of exciution in SQL'*/
FROM parks_and_recreation.employee_demographics;

Select distinct gender /* select unique rows from the table using DISTINCT*/
from parks_and_recreation.employee_demographics;