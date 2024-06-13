-- Data Query Language
-- SELECT

-- Select all records from the products table
SELECT * FROM products;

-- Select specific columns from the customers table
SELECT first_name, last_name, email FROM customers;

-- Select records with a condition from the orders table
SELECT * FROM orders
WHERE status = 'pending';

-- Select products with a price greater than $500
SELECT * FROM products
WHERE price > 500;

-- Select all customers ordered by last name
SELECT * FROM customers
ORDER BY last_name;

-- Select all products ordered by price in descending order
SELECT * FROM products
ORDER BY price DESC;

-- Count the number of orders
SELECT COUNT(*) AS total_orders FROM orders;

-- Find the average price of products
SELECT AVG(price) AS average_price FROM products;

-- Select the number of products in each category
SELECT category_id, COUNT(*) AS product_count
FROM products
GROUP BY category_id;

-- Select the total amount of orders by status
SELECT status, SUM(total_amount) AS total_sales
FROM orders
GROUP BY status;

-- Select records with a join between orders and products tables
SELECT orders.order_id, customers.first_name, customers.last_name, products.product_name, orders.quantity, orders.total_amount
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
JOIN products ON orders.product_id = products.product_id;

-- Select orders along with customer and product details
SELECT o.order_id, c.first_name, c.last_name, p.product_name, o.quantity, o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;

-- Select the total sales amount for each customer
SELECT c.customer_id, c.first_name, c.last_name, SUM(o.total_amount) AS total_sales
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;

-- Select products that have not been ordered
SELECT p.product_id, p.product_name
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id
WHERE o.product_id IS NULL;