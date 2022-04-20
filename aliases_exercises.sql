USE employees;

SELECT hire_date, COUNT(*) AS employee_count
FROM employees
GROUP BY hire_date
ORDER BY hire_date
LIMIT 10;

SELECT CONCAT(emp_no, ' - ', last_name, ' - ', first_name) AS full_name, birth_date AS DOB
FROM employees;