CREATE TABLE customers(
    cust_id SERIAL PRIMARY KEY,
    cust_name VARCHAR(50) NOT NULL
);

CREATE TABLE orders(
    ord_id SERIAL PRIMARY KEY,
    ord_date DATE NOT NULL DEFAULT CURRENT_DATE,
    cust_id INT NOT NULL REFERENCES customers(cust_id)
);

CREATE TABLE products(
    p_id SERIAL PRIMARY KEY,
    p_name VARCHAR(50) NOT NULL,
    price NUMERIC(10,2) NOT NULL CHECK(price>=0) 
);

CREATE TABLE ord_items(
    items_id SERIAL PRIMARY KEY,
    ord_id INT NOT NULL REFERENCES orders(ord_id),
    p_id INT NOT NULL REFERENCES products(p_id),
    quantity INT NOT NULL DEFAULT 1 CHECK(quantity > 0)
);


