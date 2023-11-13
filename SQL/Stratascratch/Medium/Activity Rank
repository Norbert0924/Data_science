# https://platform.stratascratch.com/coding/10351-activity-rank?code_type=1

select from_user, 
count(*) as total_emails, 
row_number () over (order by count(*) desc, from_user asc) 
from google_gmail_emails
group by from_user 
order by total_emails  desc, from_user asc;
