USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

# Just the department name
SELECT d.dept_name FROM departments d;

# Current manager for that department
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01';

# Other solution for the above
SELECT  d.dept_name, CONCAT(e.first_name, ' ', e.last_name)
FROM departments d
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e ON e.emp_no = dm.emp_no
WHERE to_date LIKE '9%';


# Currently managed by women
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND gender = 'F';

SELECT COUNT(*), title
FROM departments
JOIN dept_emp AS de ON departments.dept_no = de.dept_no
JOIN titles t ON de.emp_no = t.emp_no
WHERE de.to_date > NOW() AND t.to_date > NOW() AND departments.dept_name = 'Customer Service'
GROUP BY title;

# Another way to solve
SELECT title, COUNT(title) AS TOTAL
FROM titles t JOIN dept_emp de ON t.emp_no = de.emp_no
    WHERE dept_no = 'd009'
GROUP BY title;


SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
         JOIN salaries s ON e.emp_no = s.emp_no
WHERE de.to_date = '9999-01-01'
ORDER BY dept_name;

# Bonus
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee,
       dept_name AS Department,
       CONCAT(e.first_name, ' ', e.last_name) AS Manager
   FROM employees e
       JOIN dept_emp de ON e.emp_no = de.emp_no
       JOIN departments d ON de.dept_no = d.dept_no
       JOIN dept_manager dm ON d.dept_no = dm.dept_no
       JOIN employees e2 ON dm.emp_no = e2.emp_no
WHERE YEAR(de.to_date) = 9999 AND YEAR(dm.to_date) = 9999;





