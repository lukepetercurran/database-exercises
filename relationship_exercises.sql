USE employees;

DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE titles;

USE codeup_test_db;

ALTER TABLE albums
    ADD UNIQUE (artist, record_name);

INSERT INTO albums (artist, record_name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 2021, 70.3, 'Country');

SHOW INDEXES FROM albums;