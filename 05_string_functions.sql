-- CONCAT
SELECT CONCAT(fname,lname) FROM employees;
SELECT CONCAT(fname,' ',lname) FROM employees;

-- Alias(temp name)
SELECT CONCAT(fname,lname) AS full_name FROM employees;
SELECT emp_id,CONCAT(fname,lname) AS full_name FROM employees;

-- CONCAT_WS
SELECT CONCAT_WS(' ',fname,lname) FROM employees;
SELECT CONCAT_WS(' ',fname,lname,salary) FROM employees;

-- SUBSTRING
SELECT SUBSTRING('Hey Buddy',1,4); --output : Hey

-- REPLACE
SELECT REPLACE('Hey Buddy','Hey','Hello');

SELECT *,REPLACE(dept,'IT','Information Technology') FROM employees;
