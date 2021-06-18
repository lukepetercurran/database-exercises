USE codeup_test_db;

SELECT 'Pink Floyd Albums' AS 'Query One';

SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' as 'Query Two';

SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS 'Query Three';

SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' as 'Query Four';

SELECT name FROM albums WHERE release_date BETWEEN 1990 and 1999;

-- the query below has the same output as the query above.
-- SELECT name FROM albums WHERE release_date >= 1990 AND <=1999;

SELECT 'Which albums had less than 20 million certified sales' AS 'Query Five';

SELECT * FROM albums WHERE sales < 20;

SELECT 'ALl Rock Albums' AS 'Query Six';

SELECT * FROM albums WHERE genre = 'rock'; -- not case sensitive, still get Rock results
