/* 입력된 인자값이 홀수인지 짝수인지를 판별하는 프로시져를 생성하시오.

실행방법 : 
 VAR msg VARCHAR2(10);
 oddeven(10, :msg);
 PRINT msg; <- 이 결과가 짝수로 출력됨

 oddeven(3, :msg);
 PRINT msg; <- 이 결과가 홀수로 출력됨*/








CREATE OR REPLACE FUNCTION  foddeven(
	num IN number)

RETURN VARCHAR2
IS
result VARCHAR2(10);
BEGIN
	IF MOD(num, 2) = 0 THEN
	result := '짝수' ;

	ELSE 
	result := '홀수' ;
END IF;
 RETURN result;
END;
/
