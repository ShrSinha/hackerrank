/*
Task: Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings.

Input Format: 
employee_id  name   months	salary	
12228		 Rose	12		3000 	

Input Format:
60000 3

*/
select
months*salary as max_salary, count(employee_id)
from 
Employee
group by
months*salary
order by max_salary desc
limit 1;