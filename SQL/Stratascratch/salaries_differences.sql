# https://platform.stratascratch.com/coding/10308-salaries-differences?code_type=1

select  
ABS(
(select max(salary)
from db_employee e
left join  db_dept d
on e.department_id=d.id
where department='marketing')
-
(select max(salary)
from db_employee e
left join  db_dept d
on e.department_id=d.id
where department='engineering')
) as difference
