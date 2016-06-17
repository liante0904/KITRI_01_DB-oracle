DECLARE
 TYPE emp_record_type IS record(
	v_emp_id employees.employee_id%TYPE, 
	v_fname employees.first_name%TYPE,
	v_deptno employees.department_id%TYPE
); -- 레코드 타입 자료형선언

 emp_record emp_record_type; --변수선언


BEGIN
 SELECT employee_id, first_name, department_id
 INTO emp_record
 FROM employees
 WHERE employee_id = 100;
--employees 테이블의 컬럼들을 emp_record 에 각 컬럼들을 담는다.

 DBMS_OUTPUT.PUT_LINE( emp_record.v_fname ||', '|| emp_record.v_deptno);
END;
--emp_record 테이블내 v_emp,  v_fname, v_deptno 
--컬럼의 데이터들을 이용해 값을 출력한다.
/
