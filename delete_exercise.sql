USE codeup_test_db;

SELECT * from albums WHERE release_date > 1991;

SELECT * from albums WHERE genre = 'disco';

SELECT * from albums WHERE artist = 'Whitney Houston';

DELETE from albums a WHERE release_date > 1991;

DELETE  from albums a WHERE genre = 'disco';

DELETE from albums a WHERE artist = 'Whitney Houston';
