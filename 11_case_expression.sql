SELECT fname,salary,
CASE 
    WHEN salary >= 50000 THEN 'High' 
    ELSE 'Low' 
END AS "Salary Category"
FROM employees;

SELECT fname,salary,
CASE 
    WHEN salary>0 THEN ROUND(salary*0.10) 
    ELSE 0 
END AS bonus
FROM employees;

-- TASK
-- bonus|count
--------+-----
-- High  |    2
-- Mid   |    5
-- Low   |    3

SELECT
    CASE
        WHEN salary >= 50000 THEN 'High'
        ELSE 'Low'
    END AS bonus,
    COUNT(*) AS employee_count
FROM employees
GROUP BY
    CASE
        WHEN salary >= 50000 THEN 'High'
        ELSE 'Low'
    END;