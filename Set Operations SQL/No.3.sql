--   3. List all passers of both exams (name only). The passing score is 60 for PMP and 50 for ITIL.

SELECT Sname, Score
FROM itil
WHERE Score >= 50

UNION ALL

SELECT Sname, Score
FROM pmp
WHERE Score >= 60

ORDER BY Sname;