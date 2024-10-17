


DELIMITER $


CREATE PROCEDURE proc2()
BEGIN
select * from employe;
END$

DELIMITER ;


CALL proc2();


