# https://datalemur.com/questions/time-spent-snaps

WITH age_bucket_and_totals AS (
SELECT
age_bucket,
SUM(CASE WHEN activity_type = 'send' THEN time_spent ELSE 0 END) total_send,
SUM(CASE WHEN activity_type = 'open' THEN time_spent ELSE 0 END) total_open
FROM activities ac
JOIN age_breakdown ab 
ON ac.user_id = ab.user_id
GROUP BY age_bucket)

SELECT
age_bucket,
ROUND((total_send / (total_send + total_open)) * 100.0, 2) send_perc,
ROUND((total_open / (total_send + total_open)) * 100.0, 2) open_perc
FROM age_bucket_and_totals
