CREATE DATABASE bank_db;

CREATE TABLE employees(
    emp_id SERIAL PRIMARY KEY,
    fname VARCHAR(100) NOT NULL,
    lname VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    dept VARCHAR(100) ,
    salary DECIMAL(10,2) DEFAULT 30000.00,
    hire_date DATE NOT NULL DEFAULT CURRENT_DATE
);

INSERT INTO employees
    (emp_id, fname, lname, email, dept, salary, hire_date)
VALUES
    (1, 'Raj', 'Sharma', 'raj.sharma@example.com', 'IT', 50000, '2020-01-15'),
    (2, 'Priya', 'Singh', 'priya.singh@example.com', 'HR', 45000, '2019-03-22'),
    (3, 'Arjun', 'Verma', 'arjun.verma@example.com', 'IT', 55000, '2021-06-01'),
    (4, 'Suman', 'Patel', 'suman.patel@example.com', 'Finance', 60000, '2018-07-30'),
    (5, 'Kavita', 'Rao', 'kavita.rao@example.com', 'HR', 47000, '2020-11-10'),
    (6, 'Amit', 'Gupta', 'amit.gupta@example.com', 'Marketing', 52000, '2020-09-25'),
    (7, 'Neha', 'Desai', 'neha.desai@example.com', 'IT', 48000, '2019-05-18'),
    (8, 'Rahul', 'Kumar', 'rahul.kumar@example.com', 'IT', 53000, '2021-02-14'),
    (9, 'Anjali', 'Mehta', 'anjali.mehta@example.com', 'Finance', 61000, '2018-12-03'),
    (10, 'Vijay', 'Nair', 'vijay.nair@example.com', 'Marketing', 50000, '2020-04-29');