use employees;


SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010');

SELECT first_name, last_name, emp_no
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    from employees
    where emp_no = '101010'); #David Culver

SELECT DISTINCT title
FROM titles
WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date = '9999-01-01'
)
  AND gender = 'F';

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW()
) AND gender = 'F'; #Rose Barcus

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE to_date > NOW()
        AND emp_no IN (
            SELECT emp_no
            FROM employees
            WHERE gender = 'F'));

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries

    )