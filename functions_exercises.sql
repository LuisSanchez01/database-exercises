USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY  last_name, first_name;

SELECT * FROM employees
WHERE last_name LIKE '%e%' ORDER BY emp_no;



SELECT *
FROM employees
WHERE last_name LIKE 'E%';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE last_name LIKE '%E' OR 'E%';


SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE '%E%'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE year(birth_date) BETWEEN 1950 AND 2022
     AND month(birth_date) = 12
     AND day(birth_date) = 25;
# Another way to type the above solution
SELECT COUNT(*) FROM employees WHERE birth_date LIKE '%-12-25';


SELECT *
FROM employees
WHERE year(birth_date) BETWEEN 1950 AND 2022
  AND month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 1999;

SELECT first_name, last_name
FROM employees
WHERE month(birth_date) = 12
   AND day(birth_date) = 25
   AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC;
# Can add LIMIT 1, to only get the first person

SELECT CONCAT('Days at company: ', DATEDIFF(NOW(), hire_date)) AS 'Days at company',
       concat(first_name, ' ', last_name)
FROM employees
WHERE hire_date LIKE '199%'
   AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;



SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';