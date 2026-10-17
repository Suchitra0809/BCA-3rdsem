
create database city_db;
use city_db;
CREATE TABLE Cities(
ID INT,
name VARCHAR(20),
city VARCHAR(10),
contact BIGINT
);
INSERT INTO Cities VALUES
(1,'Robo','Chandigarh','9999988888');
INSERT INTO Cities VALUES
(2,'Sana','Ambala','7777755555');
INSERT INTO Cities VALUES
(3,'Dimple','Delhi','4444400000');
INSERT INTO Cities VALUES
(4,'Rishi','Mumbai','3333322222');
INSERT INTO Cities VALUES
(1,'Chiti','Goa','6666611111');

SELECT*FROM Cities;

SET  SQL_SAFE_UPDATES = 0;
UPDATE cities
SET city = 'delhi'
where Id = 1;

select * from Cities;

COMMIT;
START TRANSACTION;
UPDATE Cities
SET CITY = 'Pune'
WHERE ID = 1;

SELECT*FROM Cities;

ROLLBACK;
SELECT*FROM Cities;
START TRANSACTION;
UPDATE Cities
SET CITY = 'pune'
WHERE ID = 1;
SELECT*FROM Cities;
SAVEPOINT sp1;
SELECT*FROM Cities;
UPDATE Cities 
SET CITY = 'Pune'
WHERE Id = 3;
SELECT*FROM Cities;
SAVEPOINT B;
ROLLBACK TO SAVEPOINT sp1;
SELECT*FROM Cities;

CREATE TABLE Student (
SNO INT,
NAME VARCHAR(20),
CLASS VARCHAR(7),
COURSE VARCHAR(7)
);

INSERT INTO Student VALUES
(1,'Ram','1stYear','BCA'),
(2,'Raj','2snYear','BBA'),
(3,'Rahul','3rdYear','BCOM'),
(4,'Rohan','4thYear','BCA');
SELECT*FROM Student;

SELECT*FROM Student;

CREATE USER 'system'@'localhost'
IDENTIFIED BY 'System@123';

GRANT SELECT ON city_db.student
TO 'system'@'localhost';

SHOW GRANTS FOR 'system'@'localhost';

REVOKE SELECT ON city_db.student
FROM 'system'@'localhost';

SHOW GRANTS FOR 'system'@'localhost';










 