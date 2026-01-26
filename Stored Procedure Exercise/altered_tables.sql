-- TODO: Setting up primary and composite keys #OK

ALTER TABLE prodmast
ADD CONSTRAINT pk_prodmast PRIMARY KEY (prodcode);

ALTER TABLE prodtrans 
ADD CONSTRAINT ck_prodtrans PRIMARY KEY (orderno, prodcode);

-- TODO:
-- Alter the tables to add  the following constraints 
-- PRODDESC should not be null – prodmast #OK
-- TRANTYPE should either be ‘B’ or ‘S’ only – prodtrans #OK
-- QUANTITY should be greater than 0 – prodtrans #OK
-- Identify the foreign key and define with a  delete cascade – foreign key in prodtrans #OK

ALTER TABLE prodmast
MODIFY COLUMN proddesc VARCHAR(20) NOT NULL;

ALTER TABLE prodtrans
ADD CONSTRAINT validate_trantype CHECK (trantype IN ('B', 'S'));

ALTER TABLE prodtrans
ADD CONSTRAINT validate_quantity CHECK(quantity > 0);

ALTER TABLE prodtrans 
ADD CONSTRAINT fk_prodtrans FOREIGN KEY (prodcode) REFERENCES prodmast(prodcode) ON DELETE CASCADE;