/*kitri04문장을 5번 출력하시오*/


/*
DECLARE
 msg VARCHAR2(20);
BEGIN
msg := 'KITRI04';
	DBMS_OUTPUT.PUT_LINE( msg );
	DBMS_OUTPUT.PUT_LINE( msg );
	DBMS_OUTPUT.PUT_LINE( msg );
	DBMS_OUTPUT.PUT_LINE( msg );
	DBMS_OUTPUT.PUT_LINE( msg );
end;


*/



/* LOOP */
/*
DECLARE
 msg VARCHAR2(20);
 cnt number :=1;

BEGIN
 msg := 'KITRI04';
 LOOP
	DBMS_OUTPUT.PUT_LINE(msg);
	cnt := cnt+1;
	IF cnt > 5 THEN
			exit;
		END IF;
	END LOOP;
END;
/
*/



/* WHILE LOOP*/
/*
DECLARE
 msg VARCHAR2(20);
 cnt NUMBER :=1;
BEGIN
 msg := 'kitri04';
 WHILE cnt <= 5 LOOP
	DBMS_OUTPUT.PUT_LINE(msg);
	cnt := cnt+1;
END LOOP;
END;
*/


/* FOR LOOP*/
DECLARE
 msg VARCHAR2(20);
BEGIN
 msg := 'kitri04';
FOR cnt 
IN 1..5 
LOOP	DBMS_OUTPUT.PUT_LINE(msg);
END LOOP;
END;