# https://datalemur.com/questions/teams-power-users

SELECT sender_id, COUNT(*) as message_count
FROM messages
WHERE EXTRACT(year from sent_date)=2022 and EXTRACT(month from sent_date)=8
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2;
