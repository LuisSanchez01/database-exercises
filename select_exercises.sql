USE codeup_test_db;

SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT name FROM albums
WHERE release_date between 1990 and 1999
order by release_date desc;

SELECT name FROM albums
WHERE sales < 20.0
order by sales desc;

SELECT name FROM albums
WHERE genre = 'Rock'
order by genre desc;



