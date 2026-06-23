CREATE TABLE Customers(
    cust_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL CHECK (email LIKE '%@%')
);

CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    ord_date DATE NOT NULL DEFAULT CURRENT_DATE,
    price INT NOT NULL,
    cust_id INT NOT NULL REFERENCES Customers(cust_id)
);

INSERT INTO Customers (name, email)
VALUES
    ('Max Verstappen', 'max@redbull.com'),
    ('Lewis Hamilton', 'lewis@ferrari.com'),
    ('Charles Leclerc', 'charles@ferrari.com'),
    ('Lando Norris', 'lando@mclaren.com'),
    ('Oscar Piastri', 'oscar@mclaren.com'),
    ('George Russell', 'george@mercedes.com'),
    ('Fernando Alonso', 'fernando@astonmartin.com'),
    ('Carlos Sainz', 'carlos@williams.com'),
    ('Kimi Antonelli', 'kimi@mercedes.com'),
    ('Alex Albon', 'alex@williams.com');

INSERT INTO Orders (ord_date, price, cust_id)
VALUES
    ('2026-08-01', 1500, 1),
    ('2026-08-01', 850, 2),
    ('2026-08-02', 2200, 1),
    ('2026-08-02', 750, 3),
    ('2026-08-03', 3200, 4),
    ('2026-08-03', 1800, 5),
    ('2026-08-04', 950, 2),
    ('2026-08-05', 4100, 6),
    ('2026-08-06', 1250, 7),
    ('2026-08-07', 2800, 4),
    ('2026-08-08', 600, 8),
    ('2026-08-08', 3500, 5);


