USE codeup_test_db;


SELECT 'All albums in your table' AS 'Query One';
SELECT * FROM albums;

SELECT 'All albums released before 1980' as 'Query Two';
SELECT * FROM albums WHERE release_date < 1980;

SELECT 'ALL albums by Michael Jackson' AS 'Query Three';
SELECT * FROM albums WHERE artist = 'Michael Jackson';

-- to iew the sales BEFORE the update
SELECT 'Sales BEFORE' AS 'Query Four'
SELECT sales FROM albums;

UPDATE albums
SET sales = sales * 10;

-- to view the sales AFTER the update
SELECT 'Sales After' AS 'Query Five';
SELECT sales FROM albums;

UPDATE albums
SET release_date = release_date - 100
WHERE release_date <= 1980;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT 'Changing Michael to Peter Jackson' as 'Query Seven';
SELECT artist FROM albums WHERE artist = 'Peter Jackson';

