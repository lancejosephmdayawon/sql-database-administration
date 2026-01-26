DROP TRIGGER IF EXISTS TR_UpdCust;
DELIMITER $$

CREATE TRIGGER TR_UpdCust
AFTER UPDATE ON customer_t
FOR EACH ROW
BEGIN
    -- BEFORE update (OLD values)
    INSERT INTO Custhist (
        Cust_ID,
        Cust_Name,
        Order_ID,
        Purchase_Amt,
        Sman_ID,
        Purch_Date,
        UName,
        `date`,
        Action
    )
    VALUES (
        OLD.Cust_ID,
        OLD.Cust_Name,
        OLD.Order_ID,
        OLD.Purchase_Amt,
        OLD.Sman_ID,
        OLD.Purch_Date,
        USER(),
        CURRENT_DATE(),
        'UPDATE'
    );

    -- AFTER update (NEW values)
    INSERT INTO Custhist (
        Cust_ID,
        Cust_Name,
        Order_ID,
        Purchase_Amt,
        Sman_ID,
        Purch_Date,
        UName,
        `date`,
        Action
    )
    VALUES (
        NEW.Cust_ID,
        NEW.Cust_Name,
        NEW.Order_ID,
        NEW.Purchase_Amt,
        NEW.Sman_ID,
        NEW.Purch_Date,
        USER(),
        CURRENT_DATE(),
        'UPDATE'
    );
END $$

DELIMITER ;
