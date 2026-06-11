-- 01 use the employee table and get the output as 1:Raj:Sharma:IT
SELECT CONCAT_WS(':',emp_id,fname,lname,dept) FROM employees WHERE emp_id=1;

-- 02 use the employee table and get the output as 1:Raju Sharma:IT
SELECT CONCAT_WS(':',emp_id,CONCAT_WS(' ',REPLACE(fname,'Raj','Raju'),lname),dept,salary) FROM employees WHERE emp_id = 1;

--  03 use the employee table and get the output as 4:Suman:FINANCE

SELECT CONCAT_WS(':',emp_id,fname,UPPER(dept)) FROM employees WHERE emp_id=4;

-- 04 use the employee table and get the output as I1 Raj H2 Priya


SELECT CONCAT_WS(' ',CONCAT(LEFT(dept,1),emp_id),fname) FROM employees WHERE emp_id IN(1,2);

SELECT CONCAT_WS(' ',CONCAT(LEFT(dept,1),emp_id),fname) FROM employees LIMIT 2;