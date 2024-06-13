-- Data Manipulation Language
-- Insert Command

-- INSERT INTO PRODUCTS
INSERT INTO products (product_name, description, price, stock_quantity, category_id) VALUES
('Laptop', '15-inch laptop with 8GB RAM and 256GB SSD', 999.99, 50, 1),
('Smartphone', 'Latest model smartphone with 128GB storage', 699.99, 100, 2),
('Headphones', 'Wireless headphones with noise cancellation', 199.99, 200, 3);


INSERT INTO customers (first_name, last_name, email, phone, address, city, state, zip_code, country) VALUES
('John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Maple St', 'Anytown', 'Anystate', '12345', 'USA'),
('Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '456 Oak St', 'Othertown', 'Otherstate', '67890', 'USA'),
('Alice', 'Johnson', 'alice.johnson@example.com', '555-555-5555', '789 Pine St', 'Sometown', 'Somestate', '10112', 'USA');


INSERT INTO orders (customer_id, product_id, order_date, quantity, total_amount, status, shipping_address, billing_address, payment_method) VALUES
(1, 1, '2024-06-13 10:00:00', 1, 999.99, 'pending', '123 Maple St, Anytown, Anystate, 12345, USA', '123 Maple St, Anytown, Anystate, 12345, USA', 'credit card'),
(2, 2, '2024-06-13 11:00:00', 2, 1399.98, 'completed', '456 Oak St, Othertown, Otherstate, 67890, USA', '456 Oak St, Othertown, Otherstate, 67890, USA', 'PayPal'),
(3, 3, '2024-06-13 12:00:00', 3, 599.97, 'shipped', '789 Pine St, Sometown, Somestate, 10112, USA', '789 Pine St, Sometown, Somestate, 10112, USA', 'credit card');