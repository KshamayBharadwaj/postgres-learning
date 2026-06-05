--  COUNT
SELECT COUNT(emp_id) FROM employees;
SELECT COUNT(fname) FROM employees;
-- we can use any column for COUNT irrespective of the datatype but using the promary key is the best practice 

-- SUM
SELECT SUM(salary) FROM employees;

-- AVG
SELECT AVG(salary) FROM employees;

-- MIN
SELECT MIN(salary) FROM employees;

-- MAX
SELECT MAX(salary) FROM employees;
