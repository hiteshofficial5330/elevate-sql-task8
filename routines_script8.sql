-- SQL DEVELOPER INTERNSHIP - TASK 8
-- Objective: Learn reusable SQL blocks. [cite: 326]

USE ecommerce_db_task8;

-- IMPORTANT NOTE: The DELIMITER command is a client-side instruction. It's used here
-- to change the end-of-statement character from ; to // so that the multi-line
-- procedure and function code can be passed to the server as a single block.

-- =================================================================
-- EXAMPLE 1: CREATING A STORED PROCEDURE
-- =================================================================
-- A procedure to get all orders for a specific customer.
-- It takes one input parameter: the customer's ID.

DELIMITER //

CREATE PROCEDURE GetCustomerOrders(IN customer_id_param INT)
BEGIN
    -- This procedure performs an action: selecting a set of rows.
    SELECT OrderID, OrderDate
    FROM Orders
    WHERE CustomerID = customer_id_param;
END //

DELIMITER ;

-- USAGE EXAMPLE 1:
-- Call the procedure to find all orders for Customer #1 (Alice).
CALL GetCustomerOrders(1);


-- =================================================================
-- EXAMPLE 2: CREATING A STORED FUNCTION
-- =================================================================
-- A function to get the category of a specific product.
-- It takes one input parameter (the product's ID) and returns a single text value.

DELIMITER //

CREATE FUNCTION GetProductCategory(product_id_param INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE product_category VARCHAR(50);
    
    SELECT Category INTO product_category
    FROM Products
    WHERE ProductID = product_id_param;
    
    RETURN product_category;
END //

DELIMITER ;


-- USAGE EXAMPLE 2:
-- A function can be used directly within a SELECT statement.
-- Here, we get the category for each product using our custom function.
SELECT
    ProductID,
    ProductName,
    GetProductCategory(ProductID) AS Category
FROM Products;
