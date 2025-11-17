-- 5. List the names of all who took PMP but who did not take ITIL exam.

SELECT Sname
FROM pmp

EXCEPT

SELECT Sname
FROM itil

ORDER BY Sname;