# https://platform.stratascratch.com/coding/2056-number-of-shipments-per-month?code_type=1

select 
concat(date_part('year', shipment_date), '-', date_part('month', shipment_date)) as year_month,
count (*) as number_of_shipments
from amazon_shipment
group by year_month;
