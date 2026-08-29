ALTER TABLE orders
    ADD CONSTRAINT chk_order_status CHECK (status IN ('pending', 'shipped', 'cancelled'));

ALTER TABLE orders
    ALTER COLUMN status SET NOT NULL,
    ALTER COLUMN date_created SET NOT NULL;

ALTER TABLE product
    ALTER COLUMN name SET NOT NULL,
    ALTER COLUMN price SET NOT NULL;

ALTER TABLE order_product
    ADD CONSTRAINT pk_order_product PRIMARY KEY (order_id, product_id);

ALTER TABLE order_product
    ADD CONSTRAINT fk_order_product_order FOREIGN KEY (order_id) REFERENCES orders(id),
    ADD CONSTRAINT fk_order_product_product FOREIGN KEY (product_id) REFERENCES product(id);
