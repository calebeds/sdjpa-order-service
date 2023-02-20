CREATE TABLE customer(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50),
    address VARCHAR(30),
    city VARCHAR(30),
    state VARCHAR(30),
    zip_code VARCHAR(30),
    phone VARCHAR(20),
    email VARCHAR(255),
    created_date TIMESTAMP,
    last_modified_date TIMESTAMP
);

ALTER TABLE order_header
    ADD COLUMN customer_id BIGINT;

ALTER TABLE order_header
    ADD CONSTRAINT order_customer_fk
        FOREIGN KEY (customer_id) REFERENCES customer(id);

ALTER TABLE order_header DROP COLUMN customer;

INSERT INTO customer(customer_name, address, city, state, zip_code, phone, email)
    VALUES('Customer 1', '123 Duval', 'Key West', 'FL', '33040', '305.292.1435',
        'cheeseburger@margaritville.com');

UPDATE order_header SET order_header.customer_id = (SELECT id FROM customer LIMIT 1);