USE employees;

SELECT COUNT(*), gender FROM employees GROUP BY gender;

SELECT COUNT(*), last_name FROM employees GROUP BY last_name ORDER BY COUNT(*);

# When a column's data must change when another column's data is modified, the first column is functionally dependent on the second.

# Lets find the average age of hire of the Company
SELECT AVG(DATEDIFF(hire_date, birth_date)/365) FROM employees; # 31.5

SELECT MAX(DATEDIFF(hire_date, birth_date)/365) FROM employees; # 47.9

SELECT MIN(DATEDIFF(hire_date, birth_date)/365) FROM employees; # 20.0

# GROUP BY combines duplicates into one single value for each group
# GROUP BY consolidates rows based on a common column

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name from employees
WHERE last_name LIKE 'E%e'
ORDER BY last_name;

SELECT DISTINCT first_name, last_name from employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name, first_name;

SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name
ORDER BY last_name;

SELECT COUNT(last_name), last_name from employees
WHERE last_name lIKE 'E%e'
GROUP BY last_name
ORDER BY last_name;

SELECT gender, COUNT(*) FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;