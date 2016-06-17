
/*
100번 사원의 급여가 5000미만인 경우에는	'하'
		  15000미만인 경우에는	'중'
		     그이상인 경우에는  	'상'등급으로 출력하시오
출력결과
100번 사원의 이름은	, 급여는		, 급여등급은 	입니다.
*/




DECLARE
VEMP employees%ROWTYPE;
VDNAME VARCHAR2(14);

BEGIN
SELECT * INTO VEMP
FROM employees
WHERE employee_id = 100;

IF (VEMP.salary < 5000) THEN
VDNAME := '하';

ELSIF (VEMP.salary < 15000) THEN
VDNAME := '중';

ELSIF (VEMP.salary >= 15000) THEN
VDNAME := '상';

END IF;


DBMS_OUTPUT.PUT_LINE('100번 사원의 이름은' || VEMP.first_name ||', 급여는 '|| VEMP.salary ||', 급여등급은 '|| VDNAME ||' 입니다.');



END;