# https://platform.stratascratch.com/coding/9913-order-details?code_type=1

select first_name,
       order_date, 
       order_details, 
       SUM(total_order_cost) as total_cost
from customers c
join orders o 
on c.id = o.cust_id
where first_name in ('Jill', 'Eva')
group by cust_id, 
         first_name,
         order_date, 
         order_details
order by cust_id
