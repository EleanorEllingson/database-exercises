USE codeup_test_db;

-- SELECT * FROM albums;
--
-- UPDATE albums
-- SET sales = sales*10;

--
-- SELECT sales FROM albums;

-- SELECT release_date FROM albums WHERE release_date < 1980;

-- UPDATE albums
-- Set release_date = release_date-100
-- WHERE release_date < 1980;
--
-- SELECT release_date FROM albums WHERE release_date < 1980;

-- SELECT * FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Michael Jackson', artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT * From albums Where artist = 'Peter Jackson';

