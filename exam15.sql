/* �Էµ� ���ڰ��� Ȧ������ ¦�������� �Ǻ��ϴ� ���ν����� �����Ͻÿ�.

������ : 
 VAR msg VARCHAR2(10);
 oddeven(10, :msg);
 PRINT msg; <- �� ����� ¦���� ��µ�

 oddeven(3, :msg);
 PRINT msg; <- �� ����� Ȧ���� ��µ�*/








CREATE OR REPLACE FUNCTION  foddeven(
	num IN number)

RETURN VARCHAR2
IS
result VARCHAR2(10);
BEGIN
	IF MOD(num, 2) = 0 THEN
	result := '¦��' ;

	ELSE 
	result := 'Ȧ��' ;
END IF;
 RETURN result;
END;
/
