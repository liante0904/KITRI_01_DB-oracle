DECLARE
--��Į�󺯼� 
VEMPNO NUMBER;
--���۷��� ����
VEMPNO employees.employee_id%TYPE;
VNAME VARCHAR2(10);
BEGIN
VEMPNO := 100;
SELECT first_name INTO VNAME
FROM employees
WHERE employee_id = VEMPNO;
DBMS_OUTPUT.PUT_LINE (VEMPNO ||'�� ����� �̸��� '|| VNAME ||'�Դϴ�.');
END;
/
