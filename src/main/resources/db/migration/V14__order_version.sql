ALTER TABLE order_header
    ADD COLUMN version INTEGER;

ALTER TABLE order_line
    ADD COLUMN version INTEGER;