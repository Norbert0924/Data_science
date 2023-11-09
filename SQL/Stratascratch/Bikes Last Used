# https://platform.stratascratch.com/coding/10176-bikes-last-used?code_type=1

select bike_number, 
        max(end_time) as most_recently

from dc_bikeshare_q1_2012
group by bike_number
order by most_recently desc;
