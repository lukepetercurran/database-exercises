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


SELECT MIN(DATEDIFF(hire_date, birth_date)/365) AS youngest_age_at_hire FROM employees;

SELECT MIN(DATEDIFF(hire_date, birth_date)/365) AS 'youngest age at hire' FROM employees;

SELECT CONCAT(first_name, ' ', last_name) AS Name,
       DATEDIFF(hire_date, birth_date)/365 AS 'Age when hired'
FROM employees
ORDER BY DATEDIFF(hire_date, birth_date)/365 DESC
LIMIT 50;