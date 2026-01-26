-- 3. Alter the tables to add the primary keys.  The PK for the tables are as follows 

-- 3.1 ClientNo for Client table 
ALTER TABLE clientv1
ADD CONSTRAINT pk_clientv1 PRIMARY KEY (ClientNo);

-- 3.2 InvoiceNo for OrderT 
ALTER TABLE OrderT
ADD CONSTRAINT pk_order PRIMARY KEY (InvoiceNo);

-- 3.3 ProductCode for Product 
ALTER TABLE Product
ADD CONSTRAINT pk_product PRIMARY KEY (ProductCode);

-- 3.4 InvoiceNo and ProductCode for Detail 
ALTER TABLE Detail
ADD CONSTRAINT pk_detail PRIMARY KEY (InvoiceNo, ProdCode);