--   4. List the names of all who took ITIL but who did not take PMP exam.

SELECT Sname
FROM itil

EXCEPT

SELECT Sname
FROM pmp

ORDER BY Sname;