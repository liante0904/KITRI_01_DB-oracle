CREATE OR REPLACE PROCEDURE del_emp01(no number)
IS 
BEGIN
 DELETE FROM emp01 WHERE employee_id = no;
 UPDATE emp01 SET first_name = '�̸�', last_name = '��'
 WHERE employee_id = (no + 1); 
 COMMIT;
END;
/
