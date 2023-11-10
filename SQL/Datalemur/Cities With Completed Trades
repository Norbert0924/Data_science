# https://datalemur.com/questions/completed-trades

SELECT city, COUNT(*) as number_of_completed_trade
FROM trades t
LEFT JOIN users u
ON t.user_id=u.user_id
WHERE status='Completed'
GROUP BY city
ORDER BY number_of_completed_trade DESC
LIMIT 3;
