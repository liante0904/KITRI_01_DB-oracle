DECLARE
 CURSOR c1 IS 
SELECT employee_id, first_name
FROM employees;
 v_emp employees%ROWTYPE;

BEGIN
 OPEN c1;
  LOOP
   FETCH c1 INTO v_emp.employee_id, v_emp.first_name;
	--IF c1%NOTFOUND THEN
	-- EXIT;
	--END IF;
	EXIT WHEN c1%NOTFOUND;
	DBMS_OUTPUT.PUT_LINE(v_emp.employee_id || '/' || v_emp.first_name);
  END LOOP;
 CLOSE c1;
END;
/