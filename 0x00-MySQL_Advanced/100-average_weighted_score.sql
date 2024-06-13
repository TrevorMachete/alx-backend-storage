-- Task: Create a stored procedure 'ComputeAverageWeightedScoreForUser' that computes and stores the average weighted score for a student
DELIMITER //
CREATE PROCEDURE ComputeAverageWeightedScoreForUser(IN user_id INT)
BEGIN
    DECLARE total_weight INT DEFAULT 0;
    DECLARE total_score DECIMAL(10,2) DEFAULT 0.0;

    -- Compute the total weight and total score for the student
    SELECT SUM(weight), SUM(score * weight) INTO total_weight, total_score
    FROM scores
    WHERE user_id = user_id;

    -- Compute the average weighted score and store it in the 'users' table
    IF total_weight > 0 THEN
        UPDATE users SET average_weighted_score = total_score / total_weight WHERE id = user_id;
    ELSE
        UPDATE users SET average_weighted_score = 0 WHERE id = user_id;
    END IF;
END; //
DELIMITER ;
