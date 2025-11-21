CREATE OR REPLACE TRIGGER TRG_LOG_INV_AIUD
AFTER INSERT OR UPDATE OR DELETE ON ITEM
FOR EACH ROW
DECLARE
    v_action VARCHAR2(10);
    v_item_id NUMBER;
    v_timestamp TIMESTAMP := SYSTIMESTAMP;
BEGIN
    IF INSERTING THEN
        v_action := 'INSERT';
        v_item_id := :NEW.item_id;
    ELSIF UPDATING THEN
        v_action := 'UPDATE';
        v_item_id := :NEW.item_id;
    ELSIF DELETING THEN
        v_action := 'DELETE';
        v_item_id := :OLD.item_id;
    END IF;
    INSERT INTO ITEM_LOG (item_id, action, action_timestamp)
    VALUES (v_item_id, v_action, v_timestamp);
END;
/