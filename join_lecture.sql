USE employees;

Select * FROM employees;
SELECT * FROM titles;


# Output all current employee names and their current titles
SELECT CONCAT(employees.first_name, ' ', employees.last_name), titles.title
FROM employees
JOIN titles ON employees.emp_no = titles.emp_no
WHERE titles.to_date > NOW()
ORDER BY titles.title;


# Using Aliases
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, t.title
FROM employees AS e
JOIN titles AS t
    ON e.emp_no = t.emp_no
WHERE t.to_date > NOW()
ORDER BY t.title;


# output name and current department for employee number 10001
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
    ON de.emp_no = e.emp_no
JOIN departments AS d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001
