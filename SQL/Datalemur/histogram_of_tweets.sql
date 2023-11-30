# https://datalemur.com/questions/sql-histogram-tweets

WITH count_tweets AS
(SELECT user_id, COUNT(*) AS number_of_tweets
FROM tweets
WHERE EXTRACT(year FROM tweet_date) = '2022'
GROUP BY user_id)

SELECT number_of_tweets AS tweet_bucket,
      COUNT(*) AS users_num
FROM count_tweets
GROUP BY number_of_tweets;
