CREATE DATABASE company_db;

USE company_db;

CREATE TABLE Employees (
    EMP_ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    DEPARTMENT VARCHAR(50),
    SALARY INT,
    MANAGER_ID INT
);

-- Insert Data
INSERT INTO Employees (EMP_ID, NAME, DEPARTMENT, SALARY, MANAGER_ID) VALUES
(101, 'Alice', 'HR', 50000, NULL),
(102, 'Bob', 'IT', 80000, 101),
(103, 'Charlie', 'IT', 75000, 101),
(104, 'Diana', 'Finance', 90000, NULL),
(105, 'Eve', 'HR', 48000, 101),
(106, 'Frank', 'Finance', 95000, 104),
(107, 'Grace', 'IT', 82000, 101);

select  avg(salary) from employees;

select Name , salary from employees where salary > 7428571;

select Name, salary from employees where salary > ( select avg(salary) from employees);



use company_db;



SELECT NAME, SALARY
FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES);

select name , salary from employees where salary > (select salary from employees where emp_id = 101) ;

select name , department , salary from employees where salary = ( select min(salary) from employees);