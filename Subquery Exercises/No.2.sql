SELECT Name, Address, School, Score
FROM examinee
WHERE Address LIKE '%Manila' AND Score IN(
	SELECT Score
    FROM(
		SELECT DISTINCT Score
        FROM examinee
        ORDER BY Score 
        LIMIT 3) AS lowest_scr
);

-- 2. List the name and school of the examinees from Manila who got the 3 lowest scores.