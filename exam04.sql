
/*
100�� ����� �޿��� 5000�̸��� ��쿡��	'��'
		  15000�̸��� ��쿡��	'��'
		     ���̻��� ��쿡��  	'��'������� ����Ͻÿ�
��°��
100�� ����� �̸���	, �޿���		, �޿������ 	�Դϴ�.
*/




DECLARE
VEMP employees%ROWTYPE;
VDNAME VARCHAR2(14);

BEGIN
SELECT * INTO VEMP
FROM employees
WHERE employee_id = 100;

IF (VEMP.salary < 5000) THEN
VDNAME := '��';

ELSIF (VEMP.salary < 15000) THEN
VDNAME := '��';

ELSIF (VEMP.salary >= 15000) THEN
VDNAME := '��';

END IF;


DBMS_OUTPUT.PUT_LINE('100�� ����� �̸���' || VEMP.first_name ||', �޿��� '|| VEMP.salary ||', �޿������ '|| VDNAME ||' �Դϴ�.');



END;