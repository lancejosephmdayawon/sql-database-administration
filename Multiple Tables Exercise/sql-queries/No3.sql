SELECT 
	c.ClientNo, 
    CONCAT(TRIM(c.FirstName), ' ', LEFT(TRIM(c.MidName),1), '.', ' ', TRIM(c.Surname)) AS ClientName,
    o.InvoiceNo
FROM client c
LEFT JOIN ordert o
	ON c.ClientNo = o.ClientNo;