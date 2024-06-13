-- Data Control Language
-- GRANT, REVOKE

-- Create a new user (assuming the user doesn't already exist)
CREATE USER 'vvsk'@'localhost' IDENTIFIED BY 'password';

-- Grant all privileges on the entire shop_db database to vvsk
GRANT ALL PRIVILEGES ON shop_db.* TO 'vvsk'@'localhost';

-- Grant SELECT and INSERT privileges on the products table to vvsk
GRANT SELECT, INSERT ON shop_db.products TO 'vvsk'@'localhost';

-- Grant UPDATE privilege on all tables in the shop_db database to vvsk
GRANT UPDATE ON shop_db.* TO 'vvsk'@'localhost';

-- Revoke INSERT privilege on the products table from vvsk
REVOKE INSERT ON shop_db.products FROM 'vvsk'@'localhost';

-- Revoke all privileges on the entire shop_db database from vvsk
REVOKE ALL PRIVILEGES ON shop_db.* FROM 'vvsk'@'localhost';

-- Drop the user if no longer needed
DROP USER 'vvsk'@'localhost';