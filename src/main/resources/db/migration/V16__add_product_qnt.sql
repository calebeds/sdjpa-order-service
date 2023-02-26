ALTER TABLE product
    ADD COLUMN quantity_on_hand INTEGER DEFAULT 0;

UPDATE product
    SET product.quantity_on_hand = 10;