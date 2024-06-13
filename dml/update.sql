-- Data Manipulation Language
-- Update Command

-- Update records in the products table
UPDATE products
SET price = 899.99
WHERE product_name = 'Laptop';

UPDATE products
SET stock_quantity = 150
WHERE product_name = 'Smartphone';

-- Update records in the customers table
UPDATE customers
SET email = 'john.newemail@example.com'
WHERE first_name = 'John' AND last_name = 'Doe';

UPDATE customers
SET address = '789 New Address St', city = 'Newcity', state = 'Newstate', zip_code = '11111'
WHERE first_name = 'Jane' AND last_name = 'Smith';

-- Update records in the orders table
UPDATE orders
SET status = 'completed'
WHERE order_id = 1;

UPDATE orders
SET shipping_address = '999 New Shipping Address, Sometown, Somestate, 10112, USA'
WHERE order_id = 3;