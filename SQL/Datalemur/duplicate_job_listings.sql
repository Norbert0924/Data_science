# https://datalemur.com/questions/duplicate-job-listings

WITH company AS
(SELECT company_id
FROM job_listings
GROUP BY company_id, title, description
HAVING COUNT(*) > 1)

SELECT COUNT(*)
FROM company
