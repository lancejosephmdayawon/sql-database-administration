-- 11.	Alter Custhist.  Add columns UName  varchar(20), date, and Action char(15). 
--      Action can be any of the 3 DML commands (delete, insert, update).  For uname, store user().

ALTER TABLE Custhist
ADD COLUMN UName VARCHAR(20),
ADD COLUMN `date` DATE,
ADD COLUMN Action CHAR(15);