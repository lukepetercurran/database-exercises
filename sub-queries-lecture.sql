USE employees;

SELECT first_name, last_name, birth_date FROM employees WHERE emp_no IN (SELECT emp_no FROM dept_manager) LIMIT 10;

SELECT dept_name from departments WHERE dept_no IN (SELECT dept_no FROM dept_manager WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Karsten' AND last_name = 'Sigstam'));