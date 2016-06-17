CREATE OR REPLACE PROCEDURE sel_emp(
	no IN emp01.employee_id%TYPE,
	sal OUT emp01.salary%TYPE)
IS
BEGIN
 SELECT salary INTO sal
 FROM emp01
 WHERE employee_id = no;
END;
/


--in -> 100 -> sal (XXX) -> v_sal -> print v_sal ->XXX
