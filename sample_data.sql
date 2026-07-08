-- Insert Customers
INSERT INTO Customers (customer_id, first_name, last_name, email, country, join_date) VALUES
(1, 'Emma', 'Watson', 'emma@example.com', 'UK', '2025-08-15'),
(2, 'Liam', 'Neeson', 'liam@example.com', 'Ireland', '2025-11-02'),
(3, 'Sophia', 'Loren', 'sophia@example.com', 'Italy', '2026-01-10'),
(4, 'Noah', 'Centineo', 'noah@example.com', 'USA', '2026-03-22');

-- Insert Products
INSERT INTO Products (product_id, product_name, category, price, stock_quantity) VALUES
(101, 'Wireless Noise-Canceling Headphones', 'Electronics', 250.00, 45),
(102, 'Ergonomic Office Chair', 'Furniture', 199.99, 20),
(103, 'Mechanical Keyboard', 'Electronics', 120.50, 100),
(104, 'Stainless Steel Water Bottle', 'Accessories', 25.00, 200),
(105, 'Standing Desk', 'Furniture', 350.00, 15);

-- Insert Orders
INSERT INTO Orders (order_id, customer_id, order_date, order_status, total_amount) VALUES
(1001, 1, '2026-06-15', 'Completed', 370.50),
(1002, 2, '2026-07-01', 'Completed', 199.99),
(1003, 1, '2026-07-05', 'Pending', 25.00),
(1004, 3, '2026-07-06', 'Cancelled', 350.00),
(1005, 4, '2026-07-07', 'Completed', 500.00);

-- Insert Order Items
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(5001, 1001, 101, 1, 250.00),
(5002, 1001, 103, 1, 120.50),
(5003, 1002, 102, 1, 199.99),
(5004, 1003, 104, 1, 25.00),
(5005, 1004, 105, 1, 350.00),
(5006, 1005, 101, 2, 250.00);
