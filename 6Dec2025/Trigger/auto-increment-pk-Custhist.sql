-- 6. Add an auto_incrementing PK for the history file
ALTER TABLE Custhist
ADD COLUMN Hist_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;
