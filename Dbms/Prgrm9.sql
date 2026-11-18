DELIMITER //
CREATE PROCEDURE get_student(IN sid INT)
BEGIN    
DECLARE student_name VARCHAR(50);    
DECLARE CONTINUE HANDLER FOR NOT FOUND   
SET student_name = 'Student Not Found';   
SELECT name INTO student_name  
FROM student    
WHERE id = sid;    
SELECT student_name AS Result;
END //
DELIMITER ;
CALL get_student(1);
CALL get_student(100);
