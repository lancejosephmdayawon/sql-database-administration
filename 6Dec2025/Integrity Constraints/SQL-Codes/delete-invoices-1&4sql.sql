-- 6. Delete invoice numbers 1 and 4.  Check updates made with related tables. 
DELETE FROM OrderT
WHERE InvoiceNo IN (1, 4);