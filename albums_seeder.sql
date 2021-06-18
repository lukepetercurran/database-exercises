USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
    VALUES
            ('Michael Jackson', 'Thriller', 1982, 47.3, 'Pop'),
            ('AC/DC', 'Back in Black', 1980, 29.4, 'Hard Rock'),
            ('Meat Loaf', 'Bat out of Hell', 1977, 21.7, 'Glam Rock'),
            ('Pink Floyd', 'The Dark Side of the Moon', 1973, 24.4, 'Progressive Rock'),
            ('Whitney Houston', 'The Bodyguard', 1992, 32.4, 'R&B'),
            ('Eagles', 'Their Greatest Hits', 1976, 41.2, 'Country Rock'),
            ('Bee Gees', 'Saturday Night Fever', 1977, 21.6, 'Disco'),
            ('Fleetwood Mac', 'Rumours', 1977, 27.9, 'Soft Rock'),
            ('Shania Twain', 'Come on Over', 1997, 29.6, 'Country')


