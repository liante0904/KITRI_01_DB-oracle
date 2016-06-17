/*
해당 페이지의 시작행과 마지막행을 반환하는 함수를 생성하시오.
실행예) 
VAR STAR_ROW NUMBER;
get_star_row(1, 10); --현재페이지(1page)의 최대 보여줄 목록수는 10건
==> 1
get_star_row(2, 5); --현재페이지(2page)의 최대 보여줄 목록수는 5건
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