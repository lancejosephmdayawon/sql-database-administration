DELIMITER $$

CREATE TRIGGER tr_updateRoomStatus
AFTER UPDATE
ON transaction
FOR EACH ROW
BEGIN
	UPDATE room
    SET RoomStatus = 
		IF (NEW.CheckInOut = 'In', 'UA', 'AV')
	WHERE RoomID = NEW.RoomID;
END $$

DELIMITER ;
