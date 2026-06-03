SELECT fname FROM employees WHERE dept='IT';  -- WHERE clause

-- IN NOT IN
SELECT fname FROM employees WHERE IN('IT','HR','Finance');

SELECT fname FROM employees WHERE NOT IN('IT','HR','Finance');

-- BETWEEN
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 50000;

--DISTINCT 
SELECT DISTINCT dept FROM employees; 
