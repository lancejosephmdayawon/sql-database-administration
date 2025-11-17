--   10. Which companies have the same number of employees who took itil and pmp exams? Include the count of
--   takers in the output

SELECT Company, COUNT(*) AS takers_num
FROM itil
GROUP BY Company

INTERSECT

SELECT Company, COUNT(*) AS takers_num
FROM pmp
GROUP BY Company

ORDER BY COMPANY;