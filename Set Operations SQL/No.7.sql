-- 7. List all who passed PMP but who failed the ITIL exam.

SELECT Sname
FROM pmp
WHERE Score >= 60

INTERSECT
(
	SELECT Sname
	FROM itil

	EXCEPT

	SELECT Sname
	FROM itil
	WHERE Score >= 50
)

ORDER BY Sname;