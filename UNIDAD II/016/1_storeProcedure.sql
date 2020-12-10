
USE TriggerProcessing;

DROP PROCEDURE IF EXISTS sp_createNumbers;

DELIMITER $$

CREATE PROCEDURE sp_createNumbers(
    IN count INT
)
BEGIN

    DECLARE counter INT DEFAULT 1;
    WHILE (counter <= count) DO
        INSERT INTO Numbers() VALUES ();
        SET counter = counter + 1;
    END WHILE;

END$$

DELIMITER ;