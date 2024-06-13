-- Task: Create a stored procedure 'ComputeAverageScoreForUser' that computes and stores the average score for a student
DELIMITER //
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
    DECLARE avg_score DECIMAL(5,2);

    -- Compute the average score for the student
    SELECT AVG(score) INTO avg_score FROM scores WHERE user_id = user_id;

    -- Store the average score in the 'users' table
    UPDATE users SET average_score = avg_score WHERE id = user_id;
END; //
DELIMITER ;
