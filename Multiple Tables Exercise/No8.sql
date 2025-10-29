SELECT
CONCAT(TRIM(c.FirstName), ' ', LEFT(TRIM(c.MidName),1), '.', ' ', TRIM(c.Surname)) AS ClientName,
c.CreditLimit,
p.ProductDescription,
d.Quantity * p.UnitCost AS Product_Bought_Amount
FROM client c
	JOIN ordert o
		ON c.ClientNo = o.ClientNo
			JOIN detail d
				ON o.InvoiceNo = d.InvoiceNo
					JOIN product p
						ON d.ProdCode = p.ProductCode;