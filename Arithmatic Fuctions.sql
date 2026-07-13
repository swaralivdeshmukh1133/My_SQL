SHOW DATABASES;
USE MYSQL;
DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);
INSERT INTO Employee (Emp_ID, Emp_Name, Department, Salary) VALUES
(101, 'Amit', 'HR', 45000),
(102, 'Neha', 'IT', 60000),
(103, 'Rahul', 'Finance', 55000),
(104, 'Priya', 'IT', 60000),
(105, 'Karan', 'HR', 45000),
(106, 'Sneha', 'Finance', 70000),
(107, 'Rohit', 'IT', 50000),
(108, 'Anjali', 'HR', 65000),
(109, 'Vikas', 'Finance', 70000),
(110, 'Pooja', 'IT', 50000);
/*SELECT * FROM Employee;*/
/*SELECT Emp_ID,
       Emp_Name,
       Department,
       Salary,
       ROW_NUMBER() OVER (ORDER BY Salary DESC) AS Row_Num
FROM Employee;*/
/*SELECT Emp_ID,
       Emp_Name,
       Department,
       Salary,
       RANK() OVER (ORDER BY Salary DESC) AS Rank_No
FROM Employee;*/

/*SELECT Emp_ID,
       Emp_Name,
       Department,
       Salary,
       DENSE_RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS Dense_Rank_No
FROM Employee;*/
/*SELECT Emp_ID,
       Emp_Name,
       Department,
       Salary,
       SUM(Salary) OVER (PARTITION BY Department ORDER BY Salary DESC) AS sum
FROM Employee;*/
/*SELECT Emp_ID,
       Emp_Name,
       Department,
       Salary,
       max(Salary) OVER (PARTITION BY Department ORDER BY Salary DESC) AS maximum
FROM Employee;*/
SELECT Emp_ID,
       Emp_Name,
       Department,
       Salary,
       min(Salary) OVER (PARTITION BY Department ORDER BY Salary ) AS minimum
FROM Employee;
/*SELECT Emp_ID,
       Emp_Name,
       Department,
       Salary,
       avg(Salary) OVER (PARTITION BY Department) AS average_salary,
       Salary-avg(Salary)OVER (PARTITION BY Department) AS difference
       FROM Employee; */
       /*SELECT Emp_ID,
       Emp_Name,
       Department,
       Salary,
       FIRST_VALUE(Salary) OVER (PARTITION BY Department ORDER BY Salary ) AS FIRST_VALUES
FROM Employee;*/
       





