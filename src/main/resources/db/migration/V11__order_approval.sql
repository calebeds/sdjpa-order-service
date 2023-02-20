CREATE TABLE order_approval
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    approved_by VARCHAR(50),
    created_date TIMESTAMP,
    last_modified_date TIMESTAMP
);

ALTER TABLE order_header
    ADD COLUMN order_approval_id BIGINT;

ALTER TABLE order_header
    ADD CONSTRAINT order_approval_fk
        FOREIGN KEY (order_approval_id) REFERENCES order_approval(id);