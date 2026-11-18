CREATE TABLE employee (    
  emp_id INT,    
  emp_name VARCHAR(50),  
  salary INT
  );
INSERT INTO employee VALUES
  (1, 'Akash', 25000),
  (2, 'Ravi', 30000),
  (3, 'Priya', 35000);
LOCK TABLES employee READ;
SELECT * FROM employee;
UNLOCK TABLES;
LOCK TABLES employee WRITE;
UPDATE employee
SET salary = 40000
 WHERE emp_id = 1;
SELECT * FROM employee
UNLOCK TABLES;
