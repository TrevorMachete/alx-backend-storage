-- Task: Create an index 'idx_name_first_score' on the first letter of 'name' and 'score' in the 'names' table
ALTER TABLE names ADD COLUMN name_first_letter CHAR(1) GENERATED ALWAYS AS (LEFT(name, 1)) STORED;
CREATE INDEX idx_name_first_score ON names (name_first_letter, score);
