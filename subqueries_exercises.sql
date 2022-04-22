USE employees;

# Using Subqueries Format
# SELECT column_a, column_b, column_c
# FROM table_a
# WHERE column_a IN (
#     SELECT column_a
#     FROM table_b
#     WHERE column_b = true
# );

# Find all the employees with the same hire date as employee 101010 using a subquery.
#
# 69 Rows

SELECT hire_date, emp_no
FROM employees
WHERE hire_date IN (
     SELECT hire_date
     FROM employees
     WHERE emp_no = 101010);

# Find all the titles held by all employees with the first name Aamod.
#
# 314 total titles, 6 unique titles

SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );

# Find all the current department managers that are female.
SELECT first_name, last_name AS employee_name
FROM employees WHERE emp_no IN (
SELECT emp_no FROM dept_manager WHERE YEAR(to_date) = 9999 AND gender = 'F');

# Bonus



SELECT dept_no
FROM dept_manager
WHERE to_date LIKE '9%' AND emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE gender = 'F'
    );

# 2nd Bonus
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE emp_no IN (
SELECT emp_no
FROM salaries
WHERE to_date LIKE '9%' AND salary IN (
SELECT MAX(salary) FROM salaries));