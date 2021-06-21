USE employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees
WHERE last_name like 'z%'
ORDER BY last_name DESC
LIMIT 10;

SELECT DISTINCT emp_no from salaries
WHERE salary like '%'
ORDER BY