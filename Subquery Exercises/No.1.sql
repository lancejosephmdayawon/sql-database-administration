SELECT Name, School, Score
FROM examinee
WHERE Score > (
	SELECT AVG(Score)
	FROM examinee
)
LIMIT 5;

-- 1. List the name and school of the first 5 students who got who scored higher than the average score?

SELECT AVG(Score)
FROM examinee;