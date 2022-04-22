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



