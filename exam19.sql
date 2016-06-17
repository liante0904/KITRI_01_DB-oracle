--고객 테이블에 행이 추가되면 msg가 출력되도록 트리거 생성
--추가된 행의 컬럼값을 사용하려면 행트리거(FOR EACH ROW)가 필요
-- 행트리거에서 이전값 :OLD, 이후값 :NEW
/*
CREATE OR REPLACE TRIGGER trg_01
  AFTER INSERT ON  customer
FOR EACH ROW
  BEGIN
    DBMS_OUTPUT.PUT_LINE( :NEW.id || '고객의 정보가 추가 되었습니다.');
END;
/
*/

--고객 테이블에 행이 추가되면 POINT 테이블에 행이 추가되는 트리거 생성.


CREATE OR REPLACE TRIGGER trg_01
AFTER INSERT ON customer
FOR EACH ROW
BEGIN
 INSERT INTO POINT(id) VALUES ( :NEW.ID);
 END;
 /
  
