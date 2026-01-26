-- 2. Use Join. Display the student no and name of all CS students who took up COMP4023
--    during the academic year 2017-18.

CREATE VIEW join_v AS

SELECT DISTINCT s.StudNo, s.Sname
FROM student s JOIN studsubject ss ON s.StudNo = ss.StudNo
WHERE s.course = 'CS'
	AND ss.SubjectCode = 'COMP4023'
	AND ss.AYSem LIKE '2017%';