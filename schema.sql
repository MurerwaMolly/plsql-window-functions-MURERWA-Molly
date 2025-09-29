CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    branch VARCHAR(50) NOT NULL
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name  VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    product_id INT REFERENCES products(product_id),
    sale_date DATE NOT NULL,
    amount INT NOT NULL
);

-- Sample Customers
INSERT INTO customers VALUES (1001, 'Jean Uwimana', 'Kigali-CBD');
INSERT INTO customers VALUES (1002, 'Grace Niyonsaba', 'Musanze');
INSERT INTO customers VALUES (1003, 'David Mugisha', 'Huye');

-- Sample Products
INSERT INTO products VALUES (2001, 'Cappuccino', 'Beverage');
INSERT INTO products VALUES (2002, 'Croissant', 'Pastry');
INSERT INTO products VALUES (2003, 'Espresso', 'Beverage');
INSERT INTO products VALUES (2004, 'Coffee Beans 500g', 'Packaged');

-- Sample Transactions
INSERT INTO transactions VALUES (3001, 1001, 2001, DATE '2025-01-10', 3000);
INSERT INTO transactions VALUES (3002, 1002, 2002, DATE '2025-01-15', 1500);
INSERT INTO transactions VALUES (3003, 1003, 2003, DATE '2025-02-02', 2500);
INSERT INTO transactions VALUES (3004, 1001, 2004, DATE '2025-02-20', 12000);
INSERT INTO transactions VALUES (3005, 1002, 2001, DATE '2025-03-05', 3000);

COMMIT;
