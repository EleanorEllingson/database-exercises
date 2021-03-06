USE employees;

SELECT DISTINCT title
FROM titles;


SELECT last_name
FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name;


SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY first_name, last_name;


SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' and last_name not like '%qu%'
GROUP BY last_name;

SELECT  COUNT(*), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

SELECT COUNT(first_name) - COUNT(DISTINCT first_name) FROM employees;