SELECT DISTINCT School
FROM examinee
WHERE Score IN(
	SELECT Score
    FROM(
		SELECT DISTINCT Score
        FROM examinee
        ORDER BY Score DESC
        LIMIT 3) AS highest_scr
);

-- 3. How many schools made it to the top 3 (distinct schools)?