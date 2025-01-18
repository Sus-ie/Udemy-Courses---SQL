-- Revenue and Profitability Analysis

-- Which course has the highest number of subscribers?
SELECT course_title, num_subscribers
FROM SQLLabs
ORDER BY num_subscribers DESC
LIMIT 1;

-- What is the average number of subscribers per course for each subject?
SELECT subject, AVG(num_subscribers) AS avg_subscribers
FROM SQLLabs
GROUP BY subject;

--  Which courses have the highest number of reviews?
SELECT course_title, num_reviews
FROM SQLLabs
ORDER BY num_reviews DESC
LIMIT 10;

-- Which subjects have the highest total number of subscribers?
SELECT subject, SUM(num_subscribers) AS total_subscribers
FROM SQLLabs
GROUP BY subject
ORDER BY total_subscribers DESC;

-- What is the average number of reviews per course for each course level (e.g., beginner, intermediate)?

SELECT level, AVG(num_reviews) AS avg_reviews
FROM SQLLabs
GROUP BY level;
 