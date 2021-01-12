USE codeup_test_db;

-- SELECT * FROM albums;
--
-- UPDATE albums
-- SET sales = sales*10;
--
-- SELECT * FROM albums;
--
-- SELECT sales FROM albums;
--
-- UPDATE albums
-- Set release_date = release_date-1000
-- WHERE release_date < 1980;
--
-- SELECT release_date FROM albums;

SELECT * FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Michael Jackson', artist = 'Peter Jackson';

SELECT * From albums Where artist = 'Michael Jackson';

