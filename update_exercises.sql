USE codeup_test_db;

SELECT name FROM albums;
UPDATE albums
SET sales = (sales * 10);

SELECT * from albums;


SELECT name FROM albums WHERE release_date < 1980;
UPDATE albums a
SET release_date = (release_date - 100)
WHERE release_date < 1980;

SELECT * from albums a
Where release_date < 1980;

SELECT name FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums a
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT * from albums
WHERE artist = 'Michael Jackson';


