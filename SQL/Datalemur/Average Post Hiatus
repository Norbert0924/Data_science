
# https://datalemur.com/questions/sql-average-post-hiatus-1

WITH filtered_table AS
(SELECT user_id, max(DATE(post_date))-min(DATE(post_date)) AS days_between, count(*) AS number_of_posts 
FROM posts
WHERE EXTRACT(YEAR FROM post_date) =2021
group by user_id 
) 

SELECT user_id, days_between
FROM filtered_table
WHERE number_of_posts>=2;
