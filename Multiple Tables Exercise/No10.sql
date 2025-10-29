SELECT
ClientNo,
COUNT(InvoiceNo) AS Invoice_Count
FROM ordert o
GROUP BY ClientNo
HAVING Invoice_Count > 1;