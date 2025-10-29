SELECT o.ClientNo, d.ProdCode, d.Quantity
FROM ordert o
	JOIN detail d
    ON o.InvoiceNo = d.InvoiceNo;