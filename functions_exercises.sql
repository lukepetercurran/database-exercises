USE employees;

# part 1

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE last_name like 'E%';

SELECT * from employees where last_name like '%Q%';

# part 2

SELECT first_name FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT first_name FROM employees WHERE first_name = 'Irena' AND gender = 'M' OR first_name = 'Vidya' AND gender = 'M' OR first_name = 'Maya' AND gender = 'M'; #sloppy

SELECT first_name FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M'; #cleaner, but the part 1 solution with "AND gender = 'M';" tacked on is best

SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

#SELECT * FROM employees WHERE last_name LIKE 'E%e'; #very nice.

SELECT * FROM employees WHERE last_name LIKE '%Q%' and last_name NOT LIKE '%QU%';

# Order By Exercises

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY  last_name, first_name;

SELECT * FROM employees WHERE last_name like 'E%' ORDER BY emp_no;

#  Functions Exercises

SELECT DISTINCT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name like 'E%e';

SELECT * FROM employees
WHERE DAY(birth_date) = 25
  AND MONTH(birth_date) = 12;

SELECT * FROM employees
WHERE DAY(birth_date) = 25
  AND MONTH(birth_date) = 12
    AND YEAR(hire_date) LIKE '199%'
        ORDER BY birth_date, hire_date DESC;

SELECT * , DATEDIFF(hire_date, CURDATE()) FROM employees
WHERE DAY(birth_date) = 25 AND MONTH(birth_date) = 12 AND YEAR(hire_date) LIKE '199%'
ORDER BY DATEDIFF(hire_date, CURDATE()) DESC;

SELECT * , DATEDIFF(hire_date, CURDATE()) FROM employees
WHERE DAY(birth_date) = 25 AND MONTH(birth_date) = 12 AND YEAR(hire_date) LIKE '199%'
ORDER BY DATEDIFF(CURDATE(), hire_date) DESC;

