USE codeup_test_db;

SELECT 'Albums released after 1991' AS 'Query One';
SELECT * FROM albums WHERE release_date > 1991;

SELECT 'Albums with the genre disco' AS 'Query Two';
SELECT * FROM albums WHERE genre = 'disco';

SELECT 'Albums by The Eagles' AS 'Query Three'
SELECT * FROM albums WHERE artist = 'Eagles';