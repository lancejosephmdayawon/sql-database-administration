SELECT Name, Score
FROM examinee
WHERE Score = (
	SELECT Score
    FROM(
		SELECT DISTINCT Score
        FROM examinee
        ORDER BY Score DESC
        LIMIT 1 OFFSET 2) AS highest_scr
);

-- 5. Name all examinees who got the 3rd highest score (Research on OFFSET to be used with LIMIT)