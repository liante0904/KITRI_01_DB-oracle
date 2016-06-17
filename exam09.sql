DECLARE
 TYPE ename_table_type IS TABLE OF employees.first_name%TYPE
 INDEX BY BINARY_INTEGER; --배열 자료형 선언

 ename_table ename_table_typ; --변수선언
 i binary_integer := 0; --인덱스 
BEGIN
 FOR  k IN (SELECT first_name FROM employees )LOOP
 	i := i+1;
	ename_table(i) := k.first_name;
 END LOOP;

 FOR j in 1..i LOOP
	DBMS_OUTPUT.PUT.LINE( ename_table(j) );
 END LOOP;
END;
/
