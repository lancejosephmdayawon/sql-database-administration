-- 4.	Copy  Customer_t  to Custhist (history file) using the CREATE…SELECT subquery
CREATE TABLE Custhist AS
SELECT *
FROM customer_t;
