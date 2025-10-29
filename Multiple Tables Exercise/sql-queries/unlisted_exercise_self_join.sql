SELECT 
c.ClientNo, 
CONCAT(TRIM(c.FirstName), ' ', LEFT(TRIM(c.MidName),1), '.', ' ', TRIM(c.Surname)) AS ClientName,
c2.ClientMentor,
CONCAT(TRIM(c2.FirstName), ' ', LEFT(TRIM(c2.MidName),1), '.', ' ', TRIM(c2.Surname)) AS MentorName
FROM client c
	LEFT JOIN client c2
    ON c.ClientMentor = c2.ClientNo;
	