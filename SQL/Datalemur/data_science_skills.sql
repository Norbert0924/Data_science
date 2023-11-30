# https://datalemur.com/questions/matching-skills

WITH grouped_list AS 
(
SELECT candidate_id, COUNT(*) as number_of_skills
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
)
SELECT candidate_id
FROM grouped_list
where number_of_skills=3;
