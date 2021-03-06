USE employees;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name  DESC, first_name;

SELECT *
FROM employees
WHERE  (first_name LIKE ('Irena')
    OR first_name LIKE ('Vidya')
    OR first_name = 'Maya');

SELECT *
FROM employees
WHERE gender = 'M'
  AND (first_name LIKE ('Irena')
    OR first_name LIKE ('Vidya')
    OR first_name = 'Maya');

SELECT *
FROM employees
WHERE last_name LIKE 'E%';

SELECT *
FROM employees
WHERE hire_date between '1990-01-01' and
          '1999-12-31';

SELECT *
FROM employees
WHERE birth_date LIKE '%12-25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE (last_name LIKE 'E%')
   OR (last_name LIKE '%E');

SELECT *
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE hire_date between '1990-01-01' and '1999-12-31'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;

SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

