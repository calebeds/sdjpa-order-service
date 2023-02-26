UPDATE order_header
    SET version = 0 WHERE version IS NULL;

UPDATE order_line
    SET version = 0 WHERE version IS null;