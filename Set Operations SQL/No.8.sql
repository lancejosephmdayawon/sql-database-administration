-- 8. List all who passed ITIL but who did not take the PMP exam.

SELECT Sname
FROM itil
WHERE Score >= 50

EXCEPT

SELECT Sname
FROM pmp

ORDER BY Sname;