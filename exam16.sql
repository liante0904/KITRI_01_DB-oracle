/*
�ش� �������� ������� ���������� ��ȯ�ϴ� �Լ��� �����Ͻÿ�.
���࿹) 
VAR STAR_ROW NUMBER;
get_star_row(1, 10); --����������(1page)�� �ִ� ������ ��ϼ��� 10��
==> 1
get_star_row(2, 5); --����������(2page)�� �ִ� ������ ��ϼ��� 5��
==> 11

PRINT STAR_ROW
*/




CREATE OR REPLACE FUNCTION get_star_row(
	idt1 IN number,idt2 IN number)
RETURN NUMBER
IS
BEGIN
	RETURN = (idt1-1) * idt2 + 1;
END;
/




/*