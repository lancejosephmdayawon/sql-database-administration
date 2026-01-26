-- 5. Delete product with codes FT2, FS. Check updates made with related tables. 
DELETE FROM Product
WHERE ProductCode IN ('FT2', 'FS');