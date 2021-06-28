
SHOW DATABASES;
use employees;

SELECT * FROM employees WHERE hire_date = '1985-01-01';

SELECT first_name FROM employees WHERE first_name LIKE '%sus%';

SELECT emp_no, first_name, last_name FROM employees
WHERE emp_no BETWEEN 10026 AND 10082;
# don't do the following. Use BETWEEN
# WHERE emp_no > 10026
# AND emp_no < 10082;

SELECT emp_no, first_name, last_name FROM employees
WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');
#Dont do the following
#WHERE last_name = 'Heber'
#OR last_name = 'Dredge'
#OR last_name = 'Lipner'

SELECT emp_no, first_name, last_name FROM employees
WHERE emp_no < 10026;

SELECT emp_no, first_name, last_name FROM employees
WHERE emp_no < 20000
    AND last_name IN ('Herber', 'Baek')
   OR first_name = 'Shridhar';

SElECT * FROM salaries WHERE salary NOT BETWEEN 50000 and 100000;
SElECT * FROM salaries WHERE NOT salary  BETWEEN 50000 and 100000;

SELECT birth_date FROM employees
WHERE NOT birth_date like '195%';

SELECT birth_date FROM employees
WHERE birth_date NOT LIKE '195%'
  AND hire_date NOT LIKE '199%';

# This will not select all employees born in January 1963
SELECT * FROM employees WHERE birth_date LIKE '1963-1%';
# This will
SELECT * FROM employees WHERE birth_date LIKE '1963-01%';

SELECT * FROM employees WHERE birth_date LIKE '1963-01%' ORDER BY birth_date;
