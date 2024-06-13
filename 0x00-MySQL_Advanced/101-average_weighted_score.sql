-- Task: Create a stored procedure 'ComputeAverageWeightedScoreForUsers' that computes and stores the average weighted score for all students
DELIMITER //
CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE cur CURSOR FOR SELECT id FROM users;  -- Select all user ids
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    DECLARE @id INT;

    OPEN cur;

    read_loop: LOOP
        -- Fetch the next user id
        FETCH cur INTO @id;  
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Compute average weighted score for the user
        CALL ComputeAverageWeightedScoreForUser(@id);
    END LOOP;

    CLOSE cur;
END; //
DELIMITER ;
