SELECT School, COUNT(*) AS student_count
FROM examinee
WHERE Score IN(
	SELECT Score
    FROM(
		SELECT DISTINCT Score
        FROM examinee
        ORDER BY Score DESC
        LIMIT 3) AS highest_scr
)
GROUP BY School;

-- 4. Count the number of students per school who made it to the top 3 e.g. UP 3, ADMU 3, PUP 2, UST 2.