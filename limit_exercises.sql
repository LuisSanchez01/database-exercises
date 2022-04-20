USE employees;

# 3
SELECT emp_no FROM salaries
ORDER BY salary DESC
LIMIT 5;

# 4
SELECT emp_no FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 45;

# offset = pages * limit - limit
# offset = 10 * 5 - 5;



