USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

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
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT *
FROM employees
WHERE hire_date between
    CAST('1990-01-01' AS DATE) and CAST('1999-12-31' AS DATE)
  AND birth_date LIKE '%12-25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

