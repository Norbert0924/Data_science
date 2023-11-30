# https://datalemur.com/questions/supercloud-customer

WITH ranking_table AS(
SELECT 
cc.customer_id, 
p.product_category, 
(
CASE WHEN product_category = 'Analytics' THEN 1
WHEN product_category = 'Compute' THEN 2
WHEN product_category = 'Containers' THEN 4 END) AS ranking
FROM customer_contracts cc
LEFT JOIN products p
USING (product_id) 
)

SELECT customer_id
FROM ranking_table
GROUP BY customer_id
HAVING SUM(ranking) = 7;
