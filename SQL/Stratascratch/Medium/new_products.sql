# https://platform.stratascratch.com/coding/10318-new-products?code_type=1

select company_name, 
count(*) filter (where year = '2020') -
count(*) filter (where year = '2019') as net_difference
from car_launches
group by company_name;
