# https://platform.stratascratch.com/coding/9845-find-the-number-of-employees-working-in-the-admin-department?code_type=1

select count(*) as number_of_employee
from worker
where extract(month from joining_date)>=4
and department='Admin';
