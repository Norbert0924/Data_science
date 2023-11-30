# https://platform.stratascratch.com/coding/9917-average-salaries?code_type=1

select  department, 
        first_name, 
        salary, 
        avg(salary) over(partition by department)
from employee;
