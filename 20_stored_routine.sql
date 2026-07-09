--  Stored routine - An SQL statement or a set of SQL statements that can be stored on a database server which can be called number of times. 

-- types of stored routine

-- STORED  Procedure - Set of SQL statements and procedural logic that can perform operations such as inserting, updating, deleting and querying data. 

CREATE PROCEDURE procedure_name(parameter datatype)
LANGUAGE plpgsql
AS $$
    SQL statements;
$$;

CREATE PROCEDURE increase_salary(
    employee_id INT,
    amount INT
)
LANGUAGE plpgsql
AS $$
    UPDATE employees
    SET salary = salary + amount
    WHERE emp_id = employee_id;
$$;

CALL increase_salary(3,71000)


-- User defined functions - Custom function created by the user to perform specific operations and return a value.

 CREATE FUNCTION function_name(parameter datatype)
RETURNS return_datatype
LANGUAGE SQL
AS $$
    SQL statement;
$$;


CREATE FUNCTION calculate_bonus(
    salary INT,
    percentage NUMERIC
)
RETURNS NUMERIC
LANGUAGE SQL
AS $$
    SELECT salary * percentage / 100;
$$;

SELECT calculate_bonus(500000, 10);