
DECLARE
--��Į�󺯼�  VEMPNO NUMBER;
--���۷��� ���� :%TYPE
 VEMPNO employees.employee_id%TYPE;
/* VNAME VARCHAR2(10);
*/
--���۷������� %ROWTYPE
 VEMP employees%ROWTYPE;
BEGIN
 VEMPNO := 100;
/*
SELECT first_name INTO VNAME
FROM employees
WHERE employee_id = VEMPNO;
DBMS_OUTPUT.PUT_LINE (VEMPNO ||'�� ����� �̸��� '|| VNAME 
||'�Դϴ�.');
*/
SELECT * INTO VEMP
FROM employees
WHERE employee_id = VEMPNO;
DBMS_OUTPUT.PUT_LINE (VEMPNO ||'�� ����� �̸��� ' || VEMP.first_name 
|| ', �޿��� ' || VEMP.salary || ', �Ի����ڴ�'|| 
VEMP.hire_date || '�Դϴ�.');
END;
/