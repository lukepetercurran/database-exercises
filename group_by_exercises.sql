USE employees;

# 2
SELECT DISTINCT title
FROM titles;

# 3
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%e'
ORDER BY last_name;

# 4
SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name, first_name;

# 5
SELECT last_name
FROM employees
WHERE last_name LIKE '%Q%'
  AND last_name NOT LIKE '%QU%'
GROUP BY last_name;

# 6
SELECT COUNT(*), last_name
FROM employees
WHERE last_name LIKE '%Q%'
  AND last_name NOT LIKE '%QU%'
GROUP BY last_name
ORDER BY last_name;

# 7
SELECT COUNT(*), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
