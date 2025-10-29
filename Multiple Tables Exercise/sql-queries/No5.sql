SELECT DISTINCT o.ClientNo, p.ProductDescription, p.UnitCost
FROM ordert o
	JOIN detail d
    ON o.InvoiceNo = d.InvoiceNo
		JOIN product p
			ON d.ProdCode = p.ProductCode
ORDER BY 1,2;