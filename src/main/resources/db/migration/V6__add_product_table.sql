CREATE TABLE product
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(100),
    product_status VARCHAR(20),
    created_date TIMESTAMP,
    last_modified_date TIMESTAMP
) engine=InnoDB;