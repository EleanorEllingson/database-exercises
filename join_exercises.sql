USE employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS dm
      ON dm.emp_no = e.emp_no
JOIN departments AS d
      ON d.dept_no = dm.dept_no
WHERE dm.to_date < NOW();

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = NOW() AND e.gender = 'f';

SELECT t.title AS "Title", COUNT(*) AS "Count"
FROM departments AS d
JOIN dept_emp AS de
    ON de.dept_no = d.dept_no
JOIN titles AS t
    ON t.emp_no = de.emp_no
WHERE de.to_date > NOW()
AND t.to_date > NOW()
AND d.dept_name = 'Customer Service'
GROUP BY t.title;


SELECT d.dept_name AS "Department Name", CONCAT(e.first_name, ' ', e.last_name) AS "Name", s.salary AS "Salary"
FROM salaries AS s
JOIN dept_manager dm
  on dm.emp_no = s.emp_no
JOIN employees AS e
    on e.emp_no = dm.emp_no
JOIN departments AS d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date > NOW()
AND s.to_date > NOW()
ORDER BY d.dept_name;



