
DECLARE
--스칼라변수  VEMPNO NUMBER;
--레퍼런스 변수 :%TYPE
 VEMPNO employees.employee_id%TYPE;
/* VNAME VARCHAR2(10);
*/
--레퍼런스변수 %ROWTYPE
 VEMP employees%ROWTYPE;
BEGIN
 VEMPNO := 100;
/*
SELECT first_name INTO VNAME
FROM employees
WHERE employee_id = VEMPNO;
DBMS_OUTPUT.PUT_LINE (VEMPNO ||'번 사원의 이름은 '|| VNAME 
||'입니다.');
*/
SELECT * INTO VEMP
FROM employees
WHERE employee_id = VEMPNO;
DBMS_OUTPUT.PUT_LINE (VEMPNO ||'번 사원의 이름은 ' || VEMP.first_name 
|| ', 급여는 ' || VEMP.salary || ', 입사일자는'|| 
VEMP.hire_date || '입니다.');
END;
/