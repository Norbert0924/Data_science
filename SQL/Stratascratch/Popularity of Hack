# https://platform.stratascratch.com/coding/10061-popularity-of-hack?code_type=1

select location, avg(popularity) as avg_popularity
from facebook_employees e
left join facebook_hack_survey h
on e.id=h.employee_id
group by location;
