-- 3. Alter the tables to make data type/size as follows
--    Customer_t    -- > Cust_ID int, Cust_name varchar(30), order_ID  int,  sman_id  int
ALTER TABLE customer_t
MODIFY COLUMN Cust_ID INT,
MODIFY COLUMN Cust_Name VARCHAR(30),
MODIFY COLUMN Order_ID INT,
MODIFY COLUMN Sman_ID INT;

--    Salesman_t  -- > Sman_ID int , Sman_name  varchar(30)
ALTER TABLE salesman_t
MODIFY COLUMN Sman_ID INT,
MODIFY COLUMN Sman_Name VARCHAR(30);
