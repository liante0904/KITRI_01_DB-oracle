DECLARE
--스칼라변수 
VEMPNO NUMBER;
--레퍼런스 변수
VEMPNO employees.employee_id%TYPE;
VNAME VARCHAR2(10);
BEGIN
VEMPNO := 100;
SELECT first_name INTO VNAME
FROM employees
WHERE employee_id = VEMPNO;
DBMS_OUTPUT.PUT_LINE (VEMPNO ||'번 사원의 이름은 '|| VNAME ||'입니다.');
END;
/
