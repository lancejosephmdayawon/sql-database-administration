-- 9. List all names (with score) who got the same score in both exams.

SELECT Sname, Score
FROM itil

INTERSECT

SELECT Sname, Score
FROM pmp

ORDER BY Sname;