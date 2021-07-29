USE employees;

SELECT * FROM employees WHERE birth_date LIKE '1954-01%';

# Organize search results by birthday - put birthdays in order
SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date;

#For people with same birthday, organize by last name
SELECT * FROM employees
WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date,last_name;


# Organize birthday results by seniority
SELECT * from employees
WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date, hire_date;
