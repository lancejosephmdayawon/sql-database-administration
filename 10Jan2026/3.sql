SELECT * FROM examinee;

-- 3
CREATE VIEW lowest_third_lowest_scr_v AS
	SELECT ExamineeID, Name, Score
	FROM examinee
	WHERE Score IN (SELECT Score
					FROM (SELECT Score 
						  FROM examinee
						  WHERE 
						  Score = (SELECT Score
								   FROM (SELECT DISTINCT SCORE
										 FROM examinee 
										 ORDER BY Score
										 LIMIT 1)
								  AS lowest_scr)
						  OR 
						  Score = (SELECT Score
								   FROM (SELECT DISTINCT SCORE
										 FROM examinee 
										 ORDER BY Score
										 LIMIT 1 OFFSET 2)
								  AS third_lowest_scr)
						 ) AS first_third_lowest_scr
					);




-- Subquery Logic
SELECT Score
FROM examinee
WHERE 
Score = (SELECT Score
		 FROM (SELECT DISTINCT SCORE
			   FROM examinee 
			   ORDER BY Score
			   LIMIT 1)
		AS lowest_scr)
OR 
Score = (SELECT Score
		 FROM (SELECT DISTINCT SCORE
			   FROM examinee 
			   ORDER BY Score
			   LIMIT 1 OFFSET 2)
		AS third_lowest_scr);
