--�� ���̺� ���� �߰��Ǹ� msg�� ��µǵ��� Ʈ���� ����
--�߰��� ���� �÷����� ����Ϸ��� ��Ʈ����(FOR EACH ROW)�� �ʿ�
-- ��Ʈ���ſ��� ������ :OLD, ���İ� :NEW
/*
CREATE OR REPLACE TRIGGER trg_01
  AFTER INSERT ON  customer
FOR EACH ROW
  BEGIN
    DBMS_OUTPUT.PUT_LINE( :NEW.id || '���� ������ �߰� �Ǿ����ϴ�.');
END;
/
*/

--�� ���̺� ���� �߰��Ǹ� POINT ���̺� ���� �߰��Ǵ� Ʈ���� ����.


CREATE OR REPLACE TRIGGER trg_01
AFTER INSERT ON customer
FOR EACH ROW
BEGIN
 INSERT INTO POINT(id) VALUES ( :NEW.ID);
 END;
 /
  
