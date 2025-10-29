SELECT
d.InvoiceNo,
p.*
FROM detail d
	JOIN product p
		ON d.ProdCode = p.ProductCode;