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

-- REVERSE
SELECT REVERSE(fname) FROM employees;

-- LENGTH
SELECT emp_id,fname,LENGTH(fname) AS fname_length FROM employees;

-- small task - find the fname where the length is less than 4
SELECT fname,LENGTH(fname) FROM employees WHERE LENGTH(fname) <= 4 ;

-- UPPER
SELECT UPPER(fname) FROM employees;

-- LOWER
SELECT LOWER(fname) FROM employees;

-- LEFT
SELECT LEFT(fname,4) FROM employees;

-- RIGHT
SELECT RIGHT(fname,2) FROM employees;

-- TRIM
SELECT TRIM('    Hello    ');

SELECT LENGTH('   Hello   ');  --output- 11 

SELECT LENGTH(TRIM('   Hello   ')); --output- 5

-- POSITION
SELECT POSITION('OM' IN 'THOMOS');  -- output- 3