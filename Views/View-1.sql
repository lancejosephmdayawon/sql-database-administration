-- 1. Use Intersect. Display the student no. of all students who are either enrolled or have
--    taken up subject (code) COMP4023

-- But I believe this problem should use Union since it has "OR"... Intersect is appropriate if the problem has an "AND"...alter

CREATE VIEW COMP4023_Students_v AS
SELECT DISTINCT StudNo
FROM STUDSUBJECT
WHERE SubjectCode = 'COMP4023'

UNION

SELECT StudNo
FROM STUDENT;