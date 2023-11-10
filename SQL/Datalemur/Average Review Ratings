# https://datalemur.com/questions/sql-avg-review-ratings

SELECT  
EXTRACT(month from submit_date) as date_month,
product_id,
round(AVG(stars),2) as avg_stars
FROM reviews
GROUP BY date_month, product_id
ORDER BY date_month, product_id;
