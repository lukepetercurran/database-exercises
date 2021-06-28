USE employees;

SELECT employees.last_name, salaries.salary
FROM EMPLOYEES join salaries
on employees.emp_no = salaries.emp_no
limit 50;

# LEFT JOIN

SELECT users.name AS user_name, roles.name AS role_name
FROM users  LEFT JOIN roles
ON users.role_id = roles.id;

USE codeup_test_db;

CREATE TABLE persons (
                         person_id INT NOT NULL AUTO_INCREMENT,
                         first_name VARCHAR(25) NOT NULL,
                         album_id INT NOT NULL,
                         PRIMARY KEY (person_id)
);

INSERT INTO persons (first_name, album_id) VALUES ('Olivia', 29), ('Santiago', 27), ('Tareq', 15), ('Anaya', 28);

SELECT p.first_name, a.name FROM persons p JOIN albums a ON p.album_id = a.id;

# left and right join are also called "Outer Joins"

SELECT p.first_name, a.name FROM albums a LEFT JOIN persons p on a.id = p.album_id;
# The First names that have an assigned album are printing twice in the table ^

# RIGHT Join, mostly irrelevant, stick to left
SELECT p.first_name, a.name FROM persons p RIGHT JOIN albums a on a.id = p.album_id;

SELECT p.first_name, a.name FROM albums a RIGHT JOIN persons p on a.id = p.album_id;

SELECT p.first_name, a.name FROM persons p LEFT JOIN albums a on a.id = p.album_id;

# junction tables // associative tables // join tables;


CREATE TABLE preferences (
                             person_id INT NOT NULL,
                             album_id INT NOT NULL
);

INSERT INTO preferences (person_id, album_id) VALUES (1, 12), (1, 5), (1, 22), (1, 29), (2, 1), (2, 31), (2, 30), (3, 11), (3, 26), (3, 25);

SELECT p.first_name AS name, a.name AS album FROM persons p JOIN preferences pf ON p.person_id = pf.person_id JOIN albums a ON pf.album_id = a.id;

# You can even circle back to a table you've already joined from, give it a different alias, and join to it again.