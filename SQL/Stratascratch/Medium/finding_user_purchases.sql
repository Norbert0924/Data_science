# https://platform.stratascratch.com/coding/10322-finding-user-purchases?code_type=1

with filtered as 
(select  user_id, created_at, 
lead(created_at) over(partition by user_id order by created_at asc) as next_transaction
from amazon_transactions)

select distinct user_id
from filtered
where next_transaction-created_at < 8
