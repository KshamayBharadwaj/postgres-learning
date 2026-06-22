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

