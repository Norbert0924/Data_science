# https://platform.stratascratch.com/coding/9663-find-the-most-profitable-company-in-the-financial-sector-of-the-entire-world-along-with-its-continent?code_type=1

select company, continent 
from forbes_global_2010_2014
where profits=
(select max(profits)
from forbes_global_2010_2014 
where sector='Financials');
