SELECT 
	c.ClientNo, 
	CONCAT(TRIM(c.FirstName), ' ', LEFT(TRIM(c.MidName),1), '.', ' ', TRIM(c.Surname)) AS ClientName,
    o.InvoiceNo,
    o.OrderDate
FROM client AS c
	JOIN ordert AS o
    ON c.ClientNo = o.ClientNo
WHERE YEAR(o.OrderDate) = 2020;