UPDATE client
SET ClientMentor = 'C7';

UPDATE client
SET ClientMentor = 'C11'
WHERE ClientNo IN ('C1','C3','C8','C11');

UPDATE client
SET ClientMentor = ''
WHERE ClientNo IN ('C6', 'C2');