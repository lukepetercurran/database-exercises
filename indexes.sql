USE employees;

# use of indexes is part of Query Optimization

SHOW INDEXES FROM employees;

SHOW INDEXES FROM departments;

# Lets say I want some salary information

SELECT salary FROM salaries
Where salary BETWEEN 50000 AND 70000;

ALTER TABLE  salaries ADD INDEX salary_index (salary);

USE codeup_test_db;

CREATE TABLE quotes