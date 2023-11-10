# https://datalemur.com/questions/second-day-confirmation

SELECT 
user_id 
FROM emails e
LEFT JOIN texts t
ON e.email_id = t.email_id
WHERE DATE(action_date) - DATE(signup_date) = 1
AND signup_action = 'Confirmed';
