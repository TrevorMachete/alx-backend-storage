-- Task: Create a table 'users' with specific attributes
CREATE TABLE IF NOT EXISTS users (
    -- 'id' is an integer, never null, auto increment and primary key
    id INT AUTO_INCREMENT, 
    -- 'email' is a string (255 characters), never null and unique 
    email VARCHAR(255) NOT NULL UNIQUE,
    -- 'name' is a string (255 characters)
    name VARCHAR(255),
    -- 'country' is an enumeration of countries: US, CO and TN, never null
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US',
    PRIMARY KEY(id)
);
