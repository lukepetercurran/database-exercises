USE employees;


# 1
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
         JOIN dept_manager dm ON e.emp_no = dm.emp_no
         JOIN departments d ON dm.dept_no = d.dept_no
WHERE dm.to_date LIKE '9%';

# Jordans answer to # 1
SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS current_department_manager
FROM employees AS e
         JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
    AND to_date > CURDATE()
         JOIN departments AS d USING (dept_no)
ORDER BY dept_name;

# 2
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
         JOIN dept_manager dm ON e.emp_no = dm.emp_no
         JOIN departments d ON dm.dept_no = d.dept_no
WHERE dm.to_date LIKE '9%' AND e.gender = 'F';

# 3
SELECT t.title, COUNT(t.title) AS Total
FROM titles as t
         JOIN dept_emp AS de
              ON de.emp_no = t.emp_no
WHERE de.dept_no = 'd009'
  AND YEAR(T.to_date) = '9999'
GROUP BY t.title;

# Jordans Answer
SELECT
    t.title,
    COUNT(de.emp_no) AS Count
FROM dept_emp AS de
         JOIN titles AS t ON de.emp_no = t.emp_no
    AND t.to_date > CURDATE()
    AND de.to_date > CURDATE()
         JOIN departments AS d ON d.dept_no = de.dept_no
    AND dept_name = 'Customer Service'
GROUP BY t.title;

# Jeffs Answer
SELECT t.title, COUNT(t.title) AS Total
FROM titles as t
         JOIN dept_emp as de
              ON de.emp_no = t.emp_no
WHERE de.dept_no = 'd009'
  AND YEAR(t.to_date) = '9999'
  AND Year(de.to_date) = '9999'
GROUP BY t.title;

#Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary AS Salary
FROM departments d
         LEFT JOIN dept_manager dm
                   ON d.dept_no = dm.dept_no
         JOIN employees e ON e.emp_no = dm.emp_no
         JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

# Bonus Find the names of all current employees, their department name, and their current manager's name .
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee,
       d.dept_name AS Department,
       CONCAT(e2.first_name, ' ', e2.last_name) AS Manager
FROM employees e
         LEFT JOIN departments d on e.emp_no = d.emp_no