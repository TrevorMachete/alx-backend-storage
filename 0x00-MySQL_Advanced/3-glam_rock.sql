-- Task: List all bands with Glam rock as their main style, ranked by their longevity
CREATE TABLE IF NOT EXISTS bands (
    -- 'id' is an integer, never null, auto increment and primary key
    id INT AUTO_INCREMENT,
    -- 'band_name' is a string (255 characters)
    band_name VARCHAR(255),
    -- 'style' is an enumeration of styles
    style ENUM('Glam rock', 'Other styles'),
    -- 'formed' is an integer
    formed INT,
    -- 'split' is an integer
    split INT,
    PRIMARY KEY(id)
);

SELECT band_name, (2022 - formed) AS lifespan
FROM bands
WHERE style = 'Glam rock' AND split IS NOT NULL
ORDER BY lifespan DESC;
