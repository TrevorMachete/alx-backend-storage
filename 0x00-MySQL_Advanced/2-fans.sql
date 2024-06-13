-- Task: Rank country origins of bands, ordered by the number of (non-unique) fans
CREATE TABLE IF NOT EXISTS bands (
    -- 'id' is an integer, never null, auto increment and primary key
    id INT AUTO_INCREMENT,
    -- 'origin' is an enumeration of countries: US, CO and TN, never null
    origin ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US',
    -- 'fans' is an integer
    fans INT,
    PRIMARY KEY(id)
);

SELECT origin, COUNT(fans) AS nb_fans
FROM bands
GROUP BY origin
ORDER BY nb_fans DESC;
