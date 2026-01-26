USE subquery;

-- All records of examinees
SELECT * FROM examinee;


-- 1. 
-- CREATE VIEW top_3_scorers_v AS
	SELECT *
	FROM examinee
	WHERE Graduated = '2023' AND 
		score IN (
		SELECT score
		FROM (SELECT DISTINCT score
			  FROM examinee
			  WHERE Graduated = '2023'
			  ORDER BY score DESC
			  LIMIT 3) AS top_3_2022_scores
		)
	ORDER BY score DESC;



-- Subquery Test
SELECT DISTINCT score
FROM examinee
WHERE Graduated = '2022'
ORDER BY score DESC
LIMIT 3;

-- Overall Count of the examinees in 2022
SELECT COUNT(*)
FROM examinee
WHERE Graduated = '2022';

-- Made Janice Co's Exam Year 2023 to test duplicate scores (97)
UPDATE examinee
SET Graduated = '2023'
WHERE ExamineeID = 7;

-- Added a primary key to avoid Error 1175
ALTER TABLE examinee
ADD CONSTRAINT pk_examinee PRIMARY KEY(ExamineeID);