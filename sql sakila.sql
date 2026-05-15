-- Create Database
CREATE DATABASE joindb;

-- Select Database
USE joindb;

-- Create Table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    manager_id INT,
    salary INT
);

-- Insert Data
INSERT INTO employees VALUES
(1, 'Amit', 'Management', NULL, 120000),
(2, 'Neha', 'HR', 1, 75000),
(3, 'Raj', 'IT', 1, 90000),
(4, 'Simran', 'Finance', 1, 85000),
(5, 'Karan', 'IT', 3, 95000),   -- salary > manager
(6, 'Priya', 'IT', 3, 72000),
(7, 'Rohit', 'HR', 2, 50000),
(8, 'Anjali', 'HR', 2, 52000),
(9, 'Vikas', 'Finance', 4, 65000),
(10, 'Sneha', 'Finance', 4, 62000),
(11, 'Arjun', 'IT', 5, 55000),
(12, 'Pooja', 'IT', 5, 53000),
(13, 'Meera', 'HR', 7, 45000),
(14, 'Dev', 'Finance', 9, 48000),
(15, 'Nitin', 'IT', 6, 51000);

-- Show Table
SELECT * FROM employees;

-- SELF JOIN
-- Find employees whose salary is greater than their manager

SELECT 
    e.emp_id,
    e.emp_name AS employee_name,
    e.salary AS employee_salary,
    m.emp_name AS manager_name,
    m.salary AS manager_salary
FROM employees AS e
JOIN employees AS m
ON e.manager_id = m.emp_id
WHERE e.salary > m.salary;

-- show all employee name with all  managar nname
-- show its grannd with manaager name
-- find the all empoyees who are manager
--   
--u need to find out e.name salary is greater then salary of manager


-- employee ki id lete hai or manager ki id se compaare kr lete hai this is totaly wrong
-- employes ki id lete hai or manager ki id ke bhi manager id se coapare kr lete hai  this is also wrong
