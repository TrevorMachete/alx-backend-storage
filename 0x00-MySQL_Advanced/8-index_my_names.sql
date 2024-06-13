-- Task: Create an index 'idx_name_first' on the first letter of 'name' in the 'names' table
ALTER TABLE names ADD COLUMN name_first_letter CHAR(1) GENERATED ALWAYS AS (LEFT(name, 1)) STORED;
CREATE INDEX idx_name_first ON names (name_first_letter);
