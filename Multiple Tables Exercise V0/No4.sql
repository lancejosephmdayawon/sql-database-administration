SELECT o.ClientNo, p.ProductCode
FROM ordert o
	JOIN detail d
		ON o.InvoiceNo = d.InvoiceNo
        RIGHT JOIN product p
			ON d.ProdCode = p.ProductCode;