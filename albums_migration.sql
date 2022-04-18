USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums  (
#       unsigned,NOT SIGNED , no negative values!
                                      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                      artist VARCHAR(50),
                                      name VARCHAR(50) NOT NULL,
                                      release_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
                                      sales FLOAT,
                                      genre VARCHAR(50),
                                      PRIMARY KEY (id)
);

DESCRIBE albums;

SHOW CREATE TABLE albums;