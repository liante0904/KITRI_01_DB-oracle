DECLARE
 TYPE ename_table_type IS TABLE OF employees.first_name%TYPE
 INDEX BY BINARY_INTEGER; --�迭 �ڷ��� ����

 ename_table ename_table_typ; --��������
 i binary_integer := 0; --�ε��� 
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
