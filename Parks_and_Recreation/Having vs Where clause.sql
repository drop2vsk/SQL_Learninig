-- having vs where

select gender, avg(age)
from parks_and_recreation.employee_demographics
where avg(age)>40 /* this will through error - "Error Code: 1111. Invalid use of group function" 
					because of the Execution Precedence in SQL follows => From , where, group by, having, select, order by, limit
                    */
group by gender;

select gender, avg(age) as 'average age'
from parks_and_recreation.employee_demographics
group by gender
having avg(age) > 30  ; /* this will return the the result because the having is comes after the group by as per the Execution Precedence */

--  let use both where and having in same query

select occupation, avg(salary)
from parks_and_recreation.employee_salary
where occupation like '%man%'
group by occupation
having avg(salary) > 75000