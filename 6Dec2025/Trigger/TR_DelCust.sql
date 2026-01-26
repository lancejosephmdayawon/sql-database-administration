DELIMITER $$

CREATE TRIGGER TR_DelCust
BEFORE DELETE 
ON customer_t
FOR EACH ROW
BEGIN
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
END $$

DELIMITER ;
