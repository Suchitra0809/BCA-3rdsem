CREATE DATABASE EMPLOYE;
USE EMPLOYEE;
CREATE TABLE Employee (
 Empid INT,
 EmployeeName VARCHAR(25),
 Empsal DECIMAL(7,2)
);
INSERT INTO Employee VALUES (1001, 'Ramesh', 25000);
INSERT INTO Employee VALUES (1002, 'Tagore', 20000);
INSERT INTO Employee VALUES (1003, 'Bharath', 10000);
INSERT INTO Employee VALUES (1004, 'Prakesh', 5000);
INSERT INTO Employee VALUES (1005, 'Shreedhar', 1000);
SELECT * FROM Employee;
SELECT SUM(Empsal) AS Total_Salary
FROM Employee;
SELECT AVG(Empsal) AS Average_Salary
FROM Employee;
SELECT MAX(Empsal) AS Maximum_Salary
FROM Employee;
SELECT MIN(Empsal) AS Minimum_Salary
FROM Employee;
SELECT COUNT(Empid) AS Total_Employee_IDs
FROM Employee;
SELECT COUNT(*) AS Total_Records
FROM Employee;
