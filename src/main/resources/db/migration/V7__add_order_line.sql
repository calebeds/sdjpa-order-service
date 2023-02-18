CREATE TABLE order_line
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    quantity_ordered INT,
    order_header_id BIGINT,
    created_date TIMESTAMP,
    last_modified_date TIMESTAMP,
    CONSTRAINT order_header_pk FOREIGN KEY (order_header_id) REFERENCES order_header(id)
) engine=InnoDB;