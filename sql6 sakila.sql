-- Database Create
CREATE DATABASE shadidb;

USE shadidb;

-- Table Create
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

-- Data Insert
INSERT INTO employees VALUES
(1, 'Amit', 40000),
(2, 'Neha', 50000),
(3, 'Raj', 70000),
(4, 'Simran', 60000);

-- Window Function Query
SELECT 
    emp_id,
    name,
    salary,
    AVG(salary) OVER() AS avg_salary
FROM employees;


select emp_id , name , salary , avg(salary ) over () from employees;
  select emp_id , name , salary , max(salary) over(), avg (salary) over from employees;

--select emp_id , name , salary, count(*) over() , max (saalry) over (), min(salary) over ()
--from employees; 


SELECT 
    emp_id,
    name,
    salary,
    COUNT(*) OVER() AS total_employees,
    MAX(salary) OVER() AS max_salary,
    MIN(salary) OVER() AS min_salary
FROM employees; 



select emp_id , name , salary , sum(salary ) over (order by salary) , 
(salary/sum(salary) over() * 100) , '%'
from employees;

  
SELECT 
    emp_id,
    name,
    salary,
    SUM(salary) OVER(ORDER BY salary) AS running_total
FROM employees;

SELECT 
    emp_id,
    name,
    salary,
    SUM(salary) OVER(ORDER BY emp_id desc)
FROM employees;

SELECT 
    emp_id,
    name,
    salary,
    SUM(salary) OVER(ORDER BY department)
FROM employees;
  
  