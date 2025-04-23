-- query to transform this table into 1NF, ensuring that each row represents a single product for an order

SELECT 101 AS OrderID, 'John Doe' AS CustomerName, 'Laptop' AS Product
UNION ALL
SELECT 101, 'John Doe', 'Mouse'
UNION ALL
SELECT 102, 'Jane Smith', 'Tablet'
UNION ALL
SELECT 102, 'Jane Smith', 'Keyboard'
UNION ALL
SELECT 102, 'Jane Smith', 'Mouse'
UNION ALL
SELECT 103, 'Emily Clark', 'Phone';


-- query to transform this table into 2NF by removing partial dependencies. Ensure that each non-key column fully depends on the entire primary key.
-- Orders Table-1 row per order maps,OrderID to CustomerName

SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;

-- OrderItems Table-1 row per product in each order,includes Quantity
SELECT OrderID, Product, Quantity
FROM OrderDetails;
