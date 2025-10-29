SELECT 
o.ClientNo, 
SUM(d.Quantity * p.UnitCost) AS Total_Amount_Bought
FROM ordert o
	JOIN detail d
		ON o.InvoiceNo = d.InvoiceNo
			JOIN product p
				ON d.ProdCode = p.ProductCode
GROUP BY o.ClientNo;