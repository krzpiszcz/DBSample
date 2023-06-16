DROP PROCEDURE sp_test1;
DELIMITER //
CREATE PROCEDURE sp_test1()
BEGIN
	select 'name' from test1;
END  //

DELIMITER ;
