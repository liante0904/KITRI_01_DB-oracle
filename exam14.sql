/* �Էµ� ���ڰ��� Ȧ������ ¦�������� �Ǻ��ϴ� ���ν����� �����Ͻÿ�.

������ : 
 VAR msg VARCHAR2(10);
 oddeven(10, :msg);
 PRINT msg; <- �� ����� ¦���� ��µ�

 oddeven(3, :msg);
 PRINT msg; <- �� ����� Ȧ���� ��µ�*/








CREATE OR REPLACE PROCEDURE oddeven(
	idt IN number, odt OUT VARCHAR2)

IS
BEGIN
	IF MOD(idt, 2) = 0 THEN
	odt := '¦��' ;

	ELSE 
	odt := 'Ȧ��' ;
END IF;
END;
/
