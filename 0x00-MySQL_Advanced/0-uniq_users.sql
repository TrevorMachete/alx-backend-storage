-- Task: Create a table 'users' with specific attributes
CREATE TABLE IF NOT EXISTS users (
    -- 'id' is an integer, never null, auto increment and primary key
    id INT AUTO_INCREMENT,  
    -- 'email' is a string (255 characters), never null and unique
    email VARCHAR(255) NOT NULL UNIQUE, 
    -- 'name' is a string (255 characters) 
    name VARCHAR(255),  
    PRIMARY KEY(id)
);
