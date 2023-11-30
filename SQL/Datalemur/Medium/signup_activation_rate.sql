# https://datalemur.com/questions/signup-confirmation-rate

WITH filtered_table AS
(
SELECT user_id, 
(CASE WHEN signup_action = 'Confirmed' THEN 1 ELSE 0 END) AS total_confirmed,
COUNT(*) AS total_actions
FROM emails e
LEFT JOIN texts t 
ON e.email_id = t.email_id
WHERE signup_action IS NOT NULL
GROUP BY user_id, signup_action
)

SELECT ROUND(
(
SUM(total_confirmed) / SUM(total_actions)
), 2)
FROM filtered_table
