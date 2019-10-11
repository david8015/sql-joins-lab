#!/bin/sh

# TODO: Write queries to display:
# Employees working at macys
select first, last from employee join job on employee.ssn = job.ssn_id where company like 'Mac%';

# Companies in Boston
select company from job join employee on employee.ssn = job.ssn_id where city = 'Boston';

# Employee with the highest salary
select first, last from employee join job on employee.ssn = job.ssn_id order by salary desc limit 1;