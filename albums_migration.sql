USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums  (
#       unsigned,NOT SIGNED , no negative values!
                                      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                      artist VARCHAR(50),
                                      name VARCHAR(50) NOT NULL,
                                      release_date INT,
                                      sales FLOAT,
                                      genre VARCHAR(50),
                                      PRIMARY KEY (id)
);

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Jay-Z', 'Reasonable Doubt', 1994, 4000000, 'Hip-Hop');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('NAS', 'Illmatic', 1994, 3000000, 'Hip-Hop');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('OutKast', 'ATLiens', 1996, 300000, 'Hip-Hop');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('A Tribe Called Quest', 'Beats, Rhymes and Life', 1996, 5000000, 'Hip-Hop');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Talib Kweli and HiTek', 'Reflection Eternal', 1998, 4000000, 'Hip-Hop');

DESCRIBE albums;

SHOW CREATE TABLE albums;