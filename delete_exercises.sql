USE codeup_test_db;

DELETE FROM album WHERE release_date > 1991;

DELETE FROM albums WHERE genre = 'Disco';

DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT * FROM albums;
