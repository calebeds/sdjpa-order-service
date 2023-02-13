ALTER TABLE order_header
    ADD COLUMN shipping_address VARCHAR(30),
    ADD COLUMN shipping_city VARCHAR(30),
    ADD COLUMN shipping_state VARCHAR(30),
    ADD COLUMN shipping_zip_code VARCHAR(30),
    ADD COLUMN bill_to_address VARCHAR(30),
    ADD COLUMN bill_to_city VARCHAR(30),
    ADD COLUMN bill_to_state VARCHAR(30),
    ADD COLUMN bill_to_zip_code VARCHAR(30);