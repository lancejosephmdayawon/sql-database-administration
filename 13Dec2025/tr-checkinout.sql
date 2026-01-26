-- December 13, 2025 - Hands On Part 2

DELIMITER $$

CREATE TRIGGER tr_CheckInOut
AFTER DELETE
ON transaction
FOR EACH ROW

BEGIN

	-- SELECT RoomStatus INTO @roomStatus
	-- FROM room
    -- WHERE id = OLD.id;

	IF OLD.CheckInOut = 'In' THEN
		-- IF TRIM(@roomStatus) = 'UV' THEN
			UPDATE room
			SET RoomStatus = 'AV'
            WHERE RoomID = OLD.RoomID;
		-- END IF;
	END IF;
    
	IF OLD.CheckInOut = 'Out' THEN
		-- IF TRIM(@roomStatus) = 'AV' THEN
			UPDATE room
            SET RoomStatus = 'UV'
            WHERE RoomID = OLD.RoomID;
		-- END IF;
	END IF;

END $$

DELIMITER ;