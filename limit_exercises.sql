USE employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT emp_no from salaries
ORDER BY salary DESC
LIMIT 4 OFFSET 46;
