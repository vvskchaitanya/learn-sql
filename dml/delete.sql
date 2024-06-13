-- Data Manipulation Language
-- Delete Command

-- Delete records from the products table
DELETE FROM products
WHERE product_name = 'Headphones';

DELETE FROM products
WHERE product_id = 2;

-- Delete records from the customers table
DELETE FROM customers
WHERE email = 'alice.johnson@example.com';

DELETE FROM customers
WHERE customer_id = 1;

-- Delete records from the orders table
DELETE FROM orders
WHERE order_id = 1;

DELETE FROM orders
WHERE customer_id = 2;