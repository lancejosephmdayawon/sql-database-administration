CREATE TABLE Room
(
	RoomID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Category CHAR(10) CHECK (Category IN ('single', 'twin', 'studio')),
	RoomDesc VARCHAR(45),
    RoomPrice DECIMAL(10,2),
    RoomStatus CHAR(2) CHECK (RoomStatus IN ('AV','UA'))
);

CREATE TABLE Transaction
(
	RoomID INT,
    CheckInOut CHAR(3) CHECK (CheckInOut IN ('In', 'Out')),
    CheckInOutDate DATE DEFAULT (CURRENT_DATE),
    CONSTRAINT fk_roomid FOREIGN KEY (RoomID) REFERENCES Room(RoomID)
);