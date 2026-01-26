-- 3. Use Join subquery. Display the records of the IT students who got an average grade of
-- 	  1.0 to 1.75. Display also the average grade together with the student attributes.

CREATE VIEW join_sub_v AS

SELECT 
    s.StudNo,
    s.Sname,
    s.Course,
    s.DateAdmitted,
    s.StudAddress,
    avg_tbl.AvgGrade
FROM student s
JOIN (
    SELECT StudNo, AVG(Grade) AS AvgGrade
    FROM studsubject
    GROUP BY StudNo
    HAVING AVG(Grade) BETWEEN 1.0 AND 1.75
) avg_tbl
    ON s.StudNo = avg_tbl.StudNo
WHERE s.Course = 'IT';