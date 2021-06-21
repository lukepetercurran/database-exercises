USE employees;

# part 1

SELECT first_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ;

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

