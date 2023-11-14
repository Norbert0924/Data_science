# https://datalemur.com/questions/top-fans-rank

WITH top_ten AS 
(
SELECT a.artist_name,
DENSE_RANK() OVER (ORDER BY COUNT(s.song_id) DESC) AS artist_rank
FROM artists a
LEFT JOIN songs s
ON a.artist_id = s.artist_id
LEFT JOIN global_song_rank AS r
ON s.song_id = r.song_id
WHERE r.rank <= 10
GROUP BY a.artist_name
)

SELECT artist_name, artist_rank
FROM top_ten
WHERE artist_rank <= 5;
