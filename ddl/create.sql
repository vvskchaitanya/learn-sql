-- Data Definition Language
-- Create Command

-- CREATE USER
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password';

-- CREATE DATABASE
CREATE DATABASE fullstack

-- CREATE TABLE
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each product
    product_name VARCHAR(100) NOT NULL,        -- Name of the product
    description TEXT,                          -- Description of the product
    price DECIMAL(10, 2) NOT NULL,             -- Price of the product
    stock_quantity INT NOT NULL,               -- Quantity of the product in stock
    category_id INT                            -- ID of the category the product belongs to
);


CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each category
    category_name VARCHAR(100) NOT NULL,        -- Name of the category
    description TEXT                            -- Description of the category
);

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each customer
    first_name VARCHAR(50) NOT NULL,            -- First name of the customer
    last_name VARCHAR(50) NOT NULL,             -- Last name of the customer
    email VARCHAR(100) NOT NULL UNIQUE,         -- Email address of the customer
    phone VARCHAR(20),                          -- Phone number of the customer
    address VARCHAR(255),                       -- Address of the customer
    city VARCHAR(50),                           -- City of the customer
    state VARCHAR(50),                          -- State of the customer
    zip_code VARCHAR(10),                       -- ZIP code of the customer
    country VARCHAR(50)                         -- Country of the customer
);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,    -- Unique identifier for each order
    customer_id INT NOT NULL,                   -- ID of the customer who placed the order
    product_id INT NOT NULL,                    -- ID of the product being ordered
    order_date DATETIME NOT NULL,               -- Date and time when the order was placed
    quantity INT NOT NULL,                      -- Quantity of the product ordered
    total_amount DECIMAL(10, 2) NOT NULL,       -- Total amount for the order
    status VARCHAR(50) NOT NULL,                -- Status of the order (e.g., pending, completed, canceled)
    shipping_address VARCHAR(255) NOT NULL,     -- Shipping address for the order
    billing_address VARCHAR(255) NOT NULL,      -- Billing address for the order
    payment_method VARCHAR(50) NOT NULL,        -- Payment method used for the order (e.g., credit card, PayPal)
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id), -- Foreign key referencing customers table
    FOREIGN KEY (product_id) REFERENCES products(product_id)      -- Foreign key referencing products table
);


