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


