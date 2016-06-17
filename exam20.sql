/* �ֹ�(order)���̺� ���� �߰��Ǹ� ���� �߰��ɶ�
����Ʈ(point) ���̺��� ����(score)�� 1�� �����Ǵ� Ʈ���� ����.
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
