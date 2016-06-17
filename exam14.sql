/* 입력된 인자값이 홀수인지 짝수인지를 판별하는 프로시져를 생성하시오.

실행방법 : 
 VAR msg VARCHAR2(10);
 oddeven(10, :msg);
 PRINT msg; <- 이 결과가 짝수로 출력됨

 oddeven(3, :msg);
 PRINT msg; <- 이 결과가 홀수로 출력됨*/








CREATE OR REPLACE PROCEDURE oddeven(
	idt IN number, odt OUT VARCHAR2)

IS
BEGIN
	IF MOD(idt, 2) = 0 THEN
	odt := '짝수' ;

	ELSE 
	odt := '홀수' ;
END IF;
END;
/
