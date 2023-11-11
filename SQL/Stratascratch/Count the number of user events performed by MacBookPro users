# https://platform.stratascratch.com/coding/9653-count-the-number-of-user-events-performed-by-macbookpro-users?code_type=1

select event_name, count(*) as number_of_events
from playbook_events
where device='macbook pro'
group by event_name
order by number_of_events desc;
