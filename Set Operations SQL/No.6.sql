-- 6. List all who passed ITIL but who failed the PMP exam.

SELECT Sname
FROM itil
WHERE Score >= 50

INTERSECT
(
	SELECT Sname
	FROM pmp

	EXCEPT

	SELECT Sname
	FROM pmp
	WHERE Score >= 60
)

ORDER BY Sname;