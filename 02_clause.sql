SELECT fname FROM employees WHERE dept='IT';  -- WHERE clause

-- IN NOT IN
SELECT fname FROM employees WHERE IN('IT','HR','Finance');

SELECT fname FROM employees WHERE NOT IN('IT','HR','Finance');

-- BETWEEN
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 50000;

--DISTINCT 
SELECT DISTINCT dept FROM employees; 

-- ORDER BY
SELECT * FROM employees ORDER BY fname; --default ASC
SELECT * FROM employees ORDER BY fname DESC;

-- LIMIT
SELECT * FROM employees LIMIT 3;

-- LIKE
SELECT * FROM employees WHERE fname LIKE 'A%';
SELECT * FROM employees WHERE fname LIKE '%A';
SELECT * FROM employees WHERE fname LIKE '%A%';

SELECT * FROM employees WHERE fname LIKE '__'; -- It gives the two character 

