-- 4. Based on the table descriptions in #1, determine which table/s   must have the foreign key. Alter 
--    tables to add the foreign key constraints 


-- 4.1 If a certain product is deleted from Product table, the corresponding record/s must be 
--     deleted as well from the Detail table;  If product id is updated in product table, the 
--     corresponding record in detail table should be updated as well 
ALTER TABLE Detail
ADD CONSTRAINT fk_detail_product
FOREIGN KEY (ProdCode)
REFERENCES Product(ProductCode)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- 4.2 If an order is deleted from the orderT table, the corresponding record/s must be deleted as 
--     well from the Detail table 
ALTER TABLE Detail
ADD CONSTRAINT fk_detail_invoice
FOREIGN KEY (InvoiceNo)
REFERENCES OrderT(InvoiceNo)
ON DELETE CASCADE;

-- 4.3 If a client is deleted from the client table, the client field of the  corresponding record/s in  
--     the orderT table must be set to null. 
ALTER TABLE OrderT
ADD CONSTRAINT fk_order_client
FOREIGN KEY (ClientNo)
REFERENCES clientv1(ClientNo)
ON DELETE SET NULL;
