# https://platform.stratascratch.com/coding/10352-users-by-avg-session-time?code_type=1

with page_load as
(
select user_id, timestamp::date as date, max(timestamp::time) as load_time
from facebook_web_log
where action = 'page_load'
group by user_id, date
),
page_exit as
(
select user_id, timestamp::date as date, min(timestamp::time) as exit_time
from facebook_web_log
where action = 'page_exit'
group by user_id, date
) 
select pl.user_id, avg(exit_time - load_time) as session_time
from page_load pl
join page_exit pe
on pl.user_id = pe.user_id 
and pl.date = pe.date 
and pe.exit_time > pl.load_time
group by pl.user_id;
