-- 01 Find total number of employees in database 
SELECT COUNT(emp_id) AS "Total No. of employees" FROM employees ;

-- 02 Find the number of employees in each department. 
SELECT dept,COUNT(emp_id) FROM employees GROUP BY dept;

-- 03 Find Lowest Salary Paying 
SELECT MIN(salary) FROM employees;
SELECT * FROM employees ORDER BY salary  LIMIT 1;
SELECT * FROM employees WHERE salary=(SELECT MIN(salary) FROM employees);


-- 04 Find Highest Salary Paying 
SELECT MAX(salary) FROM employees;
SELECT * FROM employees ORDER BY salary DESC LIMIT 1;
SELECT * FROM employees WHERE salary=(SELECT MAX(salary) FROM employees);

--  05 Find total salary paying in HR department 
SELECT SUM(salary) FROM employees WHERE dept='HR';

-- 06 Average salary paying in each department 
SELECT dept,AVG(salary) FROM employees GROUP BY dept;