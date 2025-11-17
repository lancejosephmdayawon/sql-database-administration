-- 2. List all who took both exams, name only.

SELECT Sname
FROM itil

INTERSECT

SELECT Sname
FROM pmp

ORDER BY Sname;