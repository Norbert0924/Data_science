# https://datalemur.com/questions/laptop-mobile-viewership

SELECT
    (SELECT COUNT(*) FROM viewership WHERE device_type = 'laptop') AS laptop_views,
    (SELECT COUNT(*) FROM viewership WHERE device_type = 'tablet' OR device_type = 'phone') AS mobile_views;
