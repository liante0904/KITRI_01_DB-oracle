DECLARE
 TYPE emp_record_type IS record(
	v_emp_id employees.employee_id%TYPE, 
	v_fname employees.first_name%TYPE,
	v_deptno employees.department_id%TYPE
); -- ���ڵ� Ÿ�� �ڷ�������

 emp_record emp_record_type; --��������


BEGIN
 SELECT employee_id, first_name, department_id
 INTO emp_record
 FROM employees
 WHERE employee_id = 100;
--employees ���̺��� �÷����� emp_record �� �� �÷����� ��´�.

 DBMS_OUTPUT.PUT_LINE( emp_record.v_fname ||', '|| emp_record.v_deptno);
END;
--emp_record ���̺� v_emp,  v_fname, v_deptno 
--�÷��� �����͵��� �̿��� ���� ����Ѵ�.
/
