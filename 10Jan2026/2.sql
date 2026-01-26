SELECT * FROM examinee;
-- 2
-- CREATE VIEW above_avg_scorers_v AS
	SELECT *
	FROM examinee
	WHERE Graduated = '2023' AND score > (SELECT AVG(score) AS avg_scr
										  FROM examinee
										  WHERE Graduated = '2023')
	ORDER BY Name
	LIMIT 5;

-- Subquery logic
SELECT AVG(score) AS avg_scr
FROM examinee
WHERE Graduated = '2023';