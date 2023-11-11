# https://platform.stratascratch.com/coding/9847-find-the-number-of-workers-by-department?code_type=1

select department, count(*) as number_of_workers
from worker 
where joining_date > '2014-04-01'
group by department
order by number_of_workers desc;
