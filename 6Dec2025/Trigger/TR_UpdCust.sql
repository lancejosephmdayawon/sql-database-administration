DELIMITER $$

CREATE TRIGGER TR_UpdCust
AFTER UPDATE ON customer_t
FOR EACH ROW
BEGIN
-- 10.	Create a trigger to insert into Custhist the  before and after images of updated records in Customer_t.  Name it TR_UpdCust
--      Update Customer_t for custid = 10 set purchase_amt to 500000   <-  this is the trigger event

-- BEFORE image (OLD values)
    INSERT INTO Custhist (
        Cust_ID,
        Cust_Name,
        Order_ID,
        Purchase_Amt,
        Sman_ID,
        Purch_Date
    )
    VALUES (
        OLD.Cust_ID,
        OLD.Cust_Name,
        OLD.Order_ID,
        OLD.Purchase_Amt,
        OLD.Sman_ID,
        OLD.Purch_Date
    );

-- AFTER image (NEW values)
    INSERT INTO Custhist (
        Cust_ID,
        Cust_Name,
        Order_ID,
        Purchase_Amt,
        Sman_ID,
        Purch_Date
    )
    VALUES (
        NEW.Cust_ID,
        NEW.Cust_Name,
        NEW.Order_ID,
        NEW.Purchase_Amt,
        NEW.Sman_ID,
        NEW.Purch_Date
    );
END $$

DELIMITER ;
