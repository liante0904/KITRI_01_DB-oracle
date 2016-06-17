/* 주문(order)테이블에 행이 추가되면 행이 추가될때
포인트(point) 테이블의 점수(score)가 1점 누적되는 트리거 생성.
eg) INSERT INTO order_info(order_no, order_id)
    VALUES (order_seq.NEXTVAL, 'id3')
*/
CREATE OR REPLACE TRIGGER trg_02
  AFTER INSERT ON order_info
  FOR EACH ROW
  BEGIN
  UPDATE point set score = score + 1
      WHERE :NEW.order_id = point.id;
  END;
/
