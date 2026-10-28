Create the Database
CREATE DATABASE StudentViewDB；
USE StudentViewDB；

CREATE TABLE student(
);
stdRno INT PRIMARY KEY,
stdName VARCHAR(10),
Total INT

(1,'Ravi',450)，
(2，'Priya', 420),
(3,'Anil',380)，
(4,'Sneha',460)，
(5,'Kiran',400);
SELECT * FROM student;
  
CREATE VIEW StudentView AS
SELECT stdRno, stdName
FROM student;
