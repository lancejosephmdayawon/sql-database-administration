--   1. Combine in a result set , the names and the score of all who took ITIL ,or PMP certification, or both. If a person 
--   took both exams, then her name should appear twice in the list, together with her scores in both exams.

SELECT Sname, Score
FROM itil

UNION ALL

SELECT Sname, Score
FROM pmp

ORDER BY Sname;