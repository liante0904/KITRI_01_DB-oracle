--���ü ������ ����Ͻÿ�
--'1: SAMSUNG/ 2:LG/ 3:SK/ 4:HYUNDAI / 5:DOOSAN '
--'1��: 10000, 2��:20000, 3��:30000 /
--'1��: 1000, 2��:2000, 3��:3000 /
--'1��: 100, 2��:200, 3��:300 /
--'1��: 10, 2��:20, 3��:30 /
--'1��: 1, 2��:2, 3��:3 /

/*
DECLARE
 unit NUMBER := 10000;
BEGIN
FOR i IN 1..5 LOOP --�� 5�� ���
	DBMS_OUTPUT.PUT( i ); 
	DBMS_OUTPUT.PUT( ',' ); 
	FOR j IN 1..3 LOOP --3���� ����
	 DBMS_OUTPUT.PUT( j * unit); 
	 DBMS_OUTPUT.PUT( ':'); 
	END LOOP;
	DBMS_OUTPUT.NEW_LINE();
	
unit := unit *0.1;

END LOOP;
END;
*/




DECLARE

GUGU NUMBER;
DAN NUMBER;

BEGIN
	DBMS_OUTPUT.PUT_LINE('������');

FOR GUGU IN 2..9 LOOP --���ڸ�
	DBMS_OUTPUT.PUT_LINE(GUGU || '��');
 FOR DAN IN 1..9 LOOP --���ڸ�
	DBMS_OUTPUT.PUT(GUGU * DAN || CHR(9));
 END LOOP; 
	DBMS_OUTPUT.NEW_LINE();
	DBMS_OUTPUT.PUT(CHR(10));
END LOOP;
END;
/
