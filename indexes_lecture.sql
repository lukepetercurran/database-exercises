USE employees;

# use of indexes is part of Query Optimization

SHOW INDEXES FROM employees;

SHOW INDEXES FROM departments;

# Lets say I want some salary information

SELECT salary FROM salaries
Where salary BETWEEN 50000 AND 70000;

ALTER TABLE  salaries ADD INDEX salary_index (salary);

USE codeup_test_db;

CREATE TABLE quotes (
    id INT NOT NULL AUTO_INCREMENT,
    content VARCHAR (240) NOT NULL,
    AUTHOR VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE quotes ADD UNIQUE (content);

INSERT INTO quotes  (content, author)
VALUES ('The real voyage of discovery consists not in seeking new landscapes, but in having new eyes.', 'Marcel Proust');

# the following now generates an error message
# ERROR 1062 (23000): Duplicate entry 'The real voyahe of discovery consists no seeking new landsca' for key 'quotes.content'
INSERT INTO quotes  (content, author)
VALUES ('The real voyage of discovery consists not in seeking new landscapes, but in having new eyes.', 'Rando on Twitter');