CREATE TABLE product (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255),
    picture_url TEXT,
    price NUMERIC(10,2)
);

CREATE TABLE orders (
    id BIGINT PRIMARY KEY,
    status VARCHAR(50),
    date_created TIMESTAMP
);

CREATE TABLE order_product (
    order_id BIGINT,
    product_id BIGINT,
    quantity INT
);
