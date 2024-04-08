# Where clause 
/*  ++ Operators, we can used with WHERE clause are given below ++
	% Relational Operator %
	=  - Equal to
	<  - Less than
    <= - Less than equal to
    >  - Greater than
    >= - Greater than equal to
    != - Not equal to 	
    
    % Logical Operator %
    AND
    OR
    NOT
    
    $ LIKE Statement $
    % => anything 
    _ => exact
    
*/

Select *
From parks_and_recreation.employee_salary
Where salary <= 50000; -- here we are filter by salary by using lesser than(<=) and also we can use above

select * 
from parks_and_recreation.employee_demographics
where gender = 'Male' and age > 20 and not age >= 40; -- here we are filter the demographic table by male and age between 20 to 39

select *
from parks_and_recreation.employee_demographics
where first_name like 'A%'; -- here Any n number of character can come after "A"

select *
from parks_and_recreation.employee_demographics
where first_name like 'A__'; -- here only 2 character can come after "A"