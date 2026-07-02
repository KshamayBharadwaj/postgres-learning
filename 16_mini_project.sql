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


-- Customers
INSERT INTO customers (cust_name) VALUES
('Max Verstappen'),
('Lewis Hamilton'),
('Charles Leclerc'),
('Lando Norris'),
('Fernando Alonso');


-- Products
INSERT INTO products (p_name, price) VALUES
('F1 Cap', 1200.00),
('Team T-Shirt', 2500.00),
('Race Jacket', 5500.00),
('Mini Helmet', 3500.00),
('F1 Poster', 800.00);


-- Orders
INSERT INTO orders (ord_date, cust_id) VALUES
('2026-08-01', 1),
('2026-08-02', 2),
('2026-08-03', 3),
('2026-08-04', 1),
('2026-08-05', 4);


-- Order Items
INSERT INTO ord_items (ord_id, p_id, quantity) VALUES
(1, 1, 2),   -- Max: 2 F1 Caps
(1, 4, 1),   -- Max: 1 Mini Helmet

(2, 2, 1),   -- Lewis: 1 Team T-Shirt
(2, 5, 2),   -- Lewis: 2 Posters

(3, 3, 1),   -- Charles: 1 Race Jacket

(4, 2, 2),   -- Max: 2 Team T-Shirts
(4, 5, 1),   -- Max: 1 Poster

(5, 1, 1),   -- Lando: 1 F1 Cap
(5, 4, 1);   -- Lando: 1 Mini Helmet


SELECT * FROM customers c
JOIN orders o 
ON c.cust_id = o.cust_id
JOIN ord_items oi
ON oi.ord_id = o.ord_id
JOIN products p
ON  p.p_id = oi.p_id;

SELECT 
	c.cust_name,
	o.ord_date,
	p.p_name,
	p.price,
	oi.quantity,
	(oi.quantity*p.price) AS total_price
FROM ord_items oi
	JOIN
		products p ON oi.p_id=p.p_id
	JOIN
		orders o ON o.ord_id=oi.ord_id
	JOIN
		customers c ON o.cust_id=c.cust_id;

