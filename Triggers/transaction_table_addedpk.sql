-- Part 2... I have to add an ID in transaction table because transactions are inserted and not updated..

-- I will add the primary key
ALTER TABLE transaction
ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY FIRST;