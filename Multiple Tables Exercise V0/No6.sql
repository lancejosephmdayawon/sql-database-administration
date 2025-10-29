SELECT 
o.ClientNo, 
d.InvoiceNo, 
d.ProdCode, 
d.Quantity * p.UnitCost AS Amount
FROM ordert o
	JOIN detail d
		ON o.InvoiceNo = d.InvoiceNo
			JOIN product p
				ON d.ProdCode = p.ProductCode;
-- review