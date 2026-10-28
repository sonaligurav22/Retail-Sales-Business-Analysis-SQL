CREATE DATABASE RetailBusinessAnalysisDB;
USE RetailBusinessAnalysisDB;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    registration_date DATE
);
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    selling_price DECIMAL(10,2) NOT NULL,
    cost_price DECIMAL(10,2) NOT NULL
);
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    region VARCHAR(50),
    order_status VARCHAR(30),
    FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id)
);
CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    discount DECIMAL(5,2) DEFAULT 0,
    FOREIGN KEY (order_id)
        REFERENCES Orders(order_id),
    FOREIGN KEY (product_id)
        REFERENCES Products(product_id)
);
SHOW TABLES;

INSERT INTO Customers
(customer_id, customer_name, email, city, state, registration_date)
VALUES
(1, 'Aarav Sharma', 'aarav@gmail.com', 'Mumbai', 'Maharashtra', '2025-01-10'),
(2, 'Priya Patel', 'priya@gmail.com', 'Pune', 'Maharashtra', '2025-02-15'),
(3, 'Rahul Verma', 'rahul@gmail.com', 'Delhi', 'Delhi', '2025-03-05'),
(4, 'Sneha Joshi', 'sneha@gmail.com', 'Nashik', 'Maharashtra', '2025-04-20'),
(5, 'Rohan Mehta', 'rohan@gmail.com', 'Ahmedabad', 'Gujarat', '2025-05-12'),
(6, 'Neha Kulkarni', 'neha@gmail.com', 'Mumbai', 'Maharashtra', '2025-01-15'),
(7, 'Vikram Singh', 'vikram@gmail.com', 'Pune', 'Maharashtra', '2025-01-20'),
(8, 'Ananya Rao', 'ananya@gmail.com', 'Bengaluru', 'Karnataka', '2025-02-01'),
(9, 'Karan Shah', 'karan@gmail.com', 'Ahmedabad', 'Gujarat', '2025-02-05'),
(10, 'Pooja Desai', 'pooja@gmail.com', 'Surat', 'Gujarat', '2025-02-12'),
(11, 'Aditya Patil', 'aditya@gmail.com', 'Nashik', 'Maharashtra', '2025-02-18'),
(12, 'Kavya Nair', 'kavya@gmail.com', 'Kochi', 'Kerala', '2025-03-02'),
(13, 'Arjun Reddy', 'arjun@gmail.com', 'Hyderabad', 'Telangana', '2025-03-07'),
(14, 'Isha Gupta', 'isha@gmail.com', 'Delhi', 'Delhi', '2025-03-10'),
(15, 'Manav Jain', 'manav@gmail.com', 'Jaipur', 'Rajasthan', '2025-03-15'),
(16, 'Riya Mishra', 'riya@gmail.com', 'Lucknow', 'Uttar Pradesh', '2025-03-20'),
(17, 'Sahil Khan', 'sahil@gmail.com', 'Bhopal', 'Madhya Pradesh', '2025-04-01'),
(18, 'Meera Iyer', 'meera@gmail.com', 'Chennai', 'Tamil Nadu', '2025-04-05'),
(19, 'Dev Malhotra', 'dev@gmail.com', 'Chandigarh', 'Chandigarh', '2025-04-10'),
(20, 'Simran Kaur', 'simran@gmail.com', 'Amritsar', 'Punjab', '2025-04-15'),
(21, 'Yash Thakur', 'yash@gmail.com', 'Indore', 'Madhya Pradesh', '2025-04-20'),
(22, 'Tanya Bose', 'tanya@gmail.com', 'Kolkata', 'West Bengal', '2025-05-01'),
(23, 'Nikhil Pawar', 'nikhil@gmail.com', 'Thane', 'Maharashtra', '2025-05-05'),
(24, 'Aditi Sinha', 'aditi@gmail.com', 'Patna', 'Bihar', '2025-05-10'),
(25, 'Varun Pillai', 'varun@gmail.com', 'Kochi', 'Kerala', '2025-05-15'),
(26, 'Diya Chawla', 'diya@gmail.com', 'Gurugram', 'Haryana', '2025-05-20'),
(27, 'Ritesh Kumar', 'ritesh@gmail.com', 'Ranchi', 'Jharkhand', '2025-06-01'),
(28, 'Naina Kapoor', 'naina@gmail.com', 'Noida', 'Uttar Pradesh', '2025-06-05'),
(29, 'Aman Yadav', 'aman@gmail.com', 'Kanpur', 'Uttar Pradesh', '2025-06-10'),
(30, 'Sakshi More', 'sakshi@gmail.com', 'Kolhapur', 'Maharashtra', '2025-06-15'),
(31, 'Omkar Jadhav', 'omkar@gmail.com', 'Chhatrapati Sambhajinagar', 'Maharashtra', '2025-06-20'),
(32, 'Mitali Sen', 'mitali@gmail.com', 'Howrah', 'West Bengal', '2025-07-01'),
(33, 'Kabir Anand', 'kabir@gmail.com', 'Dehradun', 'Uttarakhand', '2025-07-05'),
(34, 'Shreya Paul', 'shreya@gmail.com', 'Guwahati', 'Assam', '2025-07-10'),
(35, 'Harsh Vora', 'harsh@gmail.com', 'Vadodara', 'Gujarat', '2025-07-15'),
(36, 'Lavanya Menon', 'lavanya@gmail.com', 'Coimbatore', 'Tamil Nadu', '2025-07-20'),
(37, 'Pranav Bhat', 'pranav@gmail.com', 'Mysuru', 'Karnataka', '2025-08-01'),
(38, 'Ayesha Sheikh', 'ayesha@gmail.com', 'Nagpur', 'Maharashtra', '2025-08-05'),
(39, 'Dhruv Arora', 'dhruv@gmail.com', 'Ludhiana', 'Punjab', '2025-08-10'),
(40, 'Ira Chatterjee', 'ira@gmail.com', 'Durgapur', 'West Bengal', '2025-08-15'),
(41, 'Siddharth Roy', 'siddharth@gmail.com', 'Siliguri', 'West Bengal', '2025-08-20'),
(42, 'Tanvi Gokhale', 'tanvi@gmail.com', 'Panaji', 'Goa', '2025-09-01'),
(43, 'Akash Bansal', 'akash@gmail.com', 'Faridabad', 'Haryana', '2025-09-05'),
(44, 'Rhea Dutta', 'rhea@gmail.com', 'Bhubaneswar', 'Odisha', '2025-09-10'),
(45, 'Mohit Soni', 'mohit@gmail.com', 'Jodhpur', 'Rajasthan', '2025-09-15'),
(46, 'Palak Trivedi', 'palak@gmail.com', 'Rajkot', 'Gujarat', '2025-09-20'),
(47, 'Gaurav Shinde', 'gaurav@gmail.com', 'Solapur', 'Maharashtra', '2025-10-01'),
(48, 'Anika Das', 'anika@gmail.com', 'Cuttack', 'Odisha', '2025-10-05'),
(49, 'Kunal Joshi', 'kunal@gmail.com', 'Udaipur', 'Rajasthan', '2025-10-10'),
(50, 'Sana Fernandes', 'sana@gmail.com', 'Vasco da Gama', 'Goa', '2025-10-15');
SELECT COUNT(*) AS total_customers
FROM Customers;
SELECT * FROM Customers
ORDER BY customer_id;

INSERT INTO Products
(product_id, product_name, category, selling_price, cost_price)
VALUES
(1, 'Laptop', 'Electronics', 55000, 43000),
(2, 'Smartphone', 'Electronics', 25000, 19000),
(3, 'Headphones', 'Electronics', 2500, 1500),
(4, 'Wireless Mouse', 'Electronics', 800, 400),
(5, 'Keyboard', 'Electronics', 1500, 900),
(6, 'Monitor', 'Electronics', 12000, 9000),
(7, 'Printer', 'Electronics', 8500, 6500),
(8, 'Tablet', 'Electronics', 18000, 14000),
(9, 'Smartwatch', 'Electronics', 5000, 3200),
(10, 'Power Bank', 'Electronics', 1200, 700),
(11, 'Office Chair', 'Furniture', 7500, 5000),
(12, 'Study Table', 'Furniture', 6500, 4200),
(13, 'Bookshelf', 'Furniture', 4500, 2800),
(14, 'Sofa', 'Furniture', 28000, 21000),
(15, 'Dining Table', 'Furniture', 18000, 13000),
(16, 'Bed Frame', 'Furniture', 22000, 16500),
(17, 'Wardrobe', 'Furniture', 16000, 12000),
(18, 'Coffee Table', 'Furniture', 3500, 2000),
(19, 'Floor Lamp', 'Furniture', 2200, 1300),
(20, 'Office Desk', 'Furniture', 9000, 6000),
(21, 'Running Shoes', 'Fashion', 3500, 2200),
(22, 'Casual T-Shirt', 'Fashion', 800, 350),
(23, 'Jeans', 'Fashion', 1800, 950),
(24, 'Jacket', 'Fashion', 3200, 2000),
(25, 'Handbag', 'Fashion', 2500, 1400),
(26, 'Backpack', 'Fashion', 1600, 900),
(27, 'Wrist Watch', 'Fashion', 4500, 2800),
(28, 'Sunglasses', 'Fashion', 1200, 600),
(29, 'Formal Shoes', 'Fashion', 2800, 1800),
(30, 'Belt', 'Fashion', 700, 300),
(31, 'Mixer Grinder', 'Home Appliances', 3500, 2500),
(32, 'Electric Kettle', 'Home Appliances', 1200, 700),
(33, 'Microwave Oven', 'Home Appliances', 9500, 7200),
(34, 'Refrigerator', 'Home Appliances', 28000, 22000),
(35, 'Washing Machine', 'Home Appliances', 24000, 18500),
(36, 'Water Purifier', 'Home Appliances', 12000, 8500),
(37, 'Ceiling Fan', 'Home Appliances', 2800, 1800),
(38, 'Air Conditioner', 'Home Appliances', 38000, 30000),
(39, 'Toaster', 'Home Appliances', 1800, 1000),
(40, 'Vacuum Cleaner', 'Home Appliances', 6500, 4500),
(41, 'Notebook Set', 'Stationery', 250, 120),
(42, 'Pen Pack', 'Stationery', 150, 60),
(43, 'Office Bag', 'Stationery', 1800, 1000),
(44, 'Calculator', 'Stationery', 600, 300),
(45, 'Desk Organizer', 'Stationery', 450, 200),
(46, 'Water Bottle', 'Accessories', 500, 220),
(47, 'Travel Mug', 'Accessories', 650, 300),
(48, 'Umbrella', 'Accessories', 800, 400),
(49, 'Wallet', 'Accessories', 900, 450),
(50, 'Lunch Box', 'Accessories', 550, 250);
select*from Products;

INSERT INTO Orders
(order_id, customer_id, order_date, region, order_status)
VALUES
(1, 1, '2025-01-05', 'West', 'Delivered'),
(2, 2, '2025-01-08', 'West', 'Delivered'),
(3, 3, '2025-01-12', 'North', 'Delivered'),
(4, 4, '2025-01-15', 'West', 'Delivered'),
(5, 5, '2025-01-20', 'West', 'Cancelled'),
(6, 6, '2025-02-02', 'West', 'Delivered'),
(7, 7, '2025-02-06', 'West', 'Delivered'),
(8, 8, '2025-02-10', 'South', 'Delivered'),
(9, 9, '2025-02-14', 'West', 'Returned'),
(10, 10, '2025-02-18', 'West', 'Delivered'),
(11, 11, '2025-03-01', 'West', 'Delivered'),
(12, 12, '2025-03-04', 'South', 'Delivered'),
(13, 13, '2025-03-08', 'South', 'Delivered'),
(14, 14, '2025-03-12', 'North', 'Delivered'),
(15, 15, '2025-03-16', 'North', 'Delivered'),
(16, 16, '2025-04-02', 'North', 'Delivered'),
(17, 17, '2025-04-06', 'Central', 'Delivered'),
(18, 18, '2025-04-10', 'South', 'Delivered'),
(19, 19, '2025-04-14', 'North', 'Cancelled'),
(20, 20, '2025-04-18', 'North', 'Delivered'),
(21, 21, '2025-05-02', 'Central', 'Delivered'),
(22, 22, '2025-05-06', 'East', 'Delivered'),
(23, 23, '2025-05-10', 'West', 'Delivered'),
(24, 24, '2025-05-14', 'East', 'Delivered'),
(25, 25, '2025-05-18', 'South', 'Returned'),
(26, 26, '2025-06-01', 'North', 'Delivered'),
(27, 27, '2025-06-05', 'East', 'Delivered'),
(28, 28, '2025-06-09', 'North', 'Delivered'),
(29, 29, '2025-06-13', 'North', 'Delivered'),
(30, 30, '2025-06-17', 'West', 'Delivered'),
(31, 31, '2025-07-02', 'West', 'Delivered'),
(32, 32, '2025-07-06', 'East', 'Delivered'),
(33, 33, '2025-07-10', 'North', 'Delivered'),
(34, 34, '2025-07-14', 'East', 'Delivered'),
(35, 35, '2025-07-18', 'West', 'Delivered'),
(36, 36, '2025-08-02', 'South', 'Delivered'),
(37, 37, '2025-08-06', 'South', 'Delivered'),
(38, 38, '2025-08-10', 'West', 'Delivered'),
(39, 39, '2025-08-14', 'North', 'Delivered'),
(40, 40, '2025-08-18', 'East', 'Cancelled'),
(41, 41, '2025-09-02', 'East', 'Delivered'),
(42, 42, '2025-09-06', 'West', 'Delivered'),
(43, 43, '2025-09-10', 'North', 'Delivered'),
(44, 44, '2025-09-14', 'East', 'Delivered'),
(45, 45, '2025-09-18', 'North', 'Delivered'),
(46, 46, '2025-10-02', 'West', 'Delivered'),
(47, 47, '2025-10-06', 'West', 'Delivered'),
(48, 48, '2025-10-10', 'East', 'Delivered'),
(49, 49, '2025-10-14', 'North', 'Delivered'),
(50, 50, '2025-10-18', 'West', 'Delivered');
select*from orders;
SELECT COUNT(*) AS total_orders
FROM Orders;
SELECT order_status, COUNT(*) AS order_count
FROM Orders
GROUP BY order_status;

INSERT INTO Order_Items
(order_item_id, order_id, product_id, quantity, unit_price, discount)
VALUES
(1, 1, 1, 1, 55000, 5),
(2, 2, 2, 2, 25000, 0),
(3, 3, 3, 3, 2500, 10),
(4, 4, 4, 2, 800, 0),
(5, 5, 5, 1, 1500, 0),
(6, 6, 6, 2, 12000, 5),
(7, 7, 7, 1, 8500, 0),
(8, 8, 8, 1, 18000, 10),
(9, 9, 9, 2, 5000, 0),
(10, 10, 10, 3, 1200, 5),
(11, 11, 11, 1, 7500, 0),
(12, 12, 12, 2, 6500, 5),
(13, 13, 13, 1, 4500, 0),
(14, 14, 14, 1, 28000, 10),
(15, 15, 15, 2, 18000, 0),
(16, 16, 16, 1, 22000, 5),
(17, 17, 17, 1, 16000, 0),
(18, 18, 18, 2, 3500, 0),
(19, 19, 19, 1, 2200, 0),
(20, 20, 20, 1, 9000, 10),
(21, 21, 21, 2, 3500, 5),
(22, 22, 22, 4, 800, 0),
(23, 23, 23, 2, 1800, 10),
(24, 24, 24, 1, 3200, 0),
(25, 25, 25, 1, 2500, 5),
(26, 26, 26, 2, 1600, 0),
(27, 27, 27, 1, 4500, 10),
(28, 28, 28, 3, 1200, 0),
(29, 29, 29, 1, 2800, 5),
(30, 30, 30, 2, 700, 0),
(31, 31, 31, 1, 3500, 0),
(32, 32, 32, 2, 1200, 5),
(33, 33, 33, 1, 9500, 10),
(34, 34, 34, 1, 28000, 0),
(35, 35, 35, 1, 24000, 5),
(36, 36, 36, 2, 12000, 0),
(37, 37, 37, 3, 2800, 5),
(38, 38, 38, 1, 38000, 10),
(39, 39, 39, 2, 1800, 0),
(40, 40, 40, 1, 6500, 0),
(41, 41, 41, 5, 250, 0),
(42, 42, 42, 10, 150, 0),
(43, 43, 43, 1, 1800, 5),
(44, 44, 44, 2, 600, 0),
(45, 45, 45, 3, 450, 0),
(46, 46, 46, 2, 500, 0),
(47, 47, 47, 1, 650, 5),
(48, 48, 48, 2, 800, 0),
(49, 49, 49, 1, 900, 10),
(50, 50, 50, 3, 550, 0);
select*from Order_Items;

SELECT COUNT(*) AS total_customers FROM Customers;
SELECT COUNT(*) AS total_products FROM Products;
SELECT COUNT(*) AS total_orders FROM Orders;
SELECT COUNT(*) AS total_order_items FROM Order_Items;

-- Find products in the Electronics category
SELECT *FROM Products
WHERE category = 'Electronics';

--  Find products with a selling price greater than 1,000
SELECT product_name, selling_price
FROM Products
WHERE selling_price > 1000;

-- Display all delivered orders
SELECT *FROM Orders
WHERE order_status = 'Delivered'; 

-- Count orders by status
SELECT order_status, COUNT(*) AS total_orders
FROM Orders
GROUP BY order_status;

-- Find the total quantity sold
SELECT SUM(quantity) AS total_quantity
FROM Order_Items;

-- Find the highest product price
SELECT MAX(selling_price) AS highest_price
FROM Products;

-- Find the average product price
SELECT AVG(selling_price) AS average_price
FROM Products;

-- Find the cheapest product
SELECT product_name, selling_price
FROM Products
ORDER BY selling_price ASC
LIMIT 1;

-- Count products in each category
SELECT category, COUNT(*) AS total_products
FROM Products
GROUP BY category;

-- Find orders placed in 2025
SELECT *
FROM Orders
WHERE order_date BETWEEN '2025-01-01' AND '2025-12-31';

-- Show customer names with their order status
SELECT
    Customers.customer_name,
    Orders.order_id,
    Orders.order_status
FROM Customers
JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- Update a product price
SELECT product_id, product_name, selling_price
FROM Products
WHERE product_id = 1;

UPDATE Products
SET selling_price = 1500
WHERE product_id = 1;

-- Find product categories with more than 5 products
SELECT
    category,
    COUNT(*) AS total_products
FROM Products
GROUP BY category
HAVING COUNT(*) > 5;

-- Find unique cities
SELECT DISTINCT city
FROM Customers;

-- Find products priced between ₹500 and ₹5,000
SELECT product_name, selling_price
FROM Products
WHERE selling_price BETWEEN 500 AND 5000;  

-- Calculate total revenue for each order
SELECT
    order_id,
    SUM(quantity * unit_price) AS total_revenue
FROM Order_Items
GROUP BY order_id;

-- Sort products by price from lowest to highest
SELECT product_name, selling_price
FROM Products
ORDER BY selling_price ASC;

-- Find delivered orders from the West region
SELECT *
FROM Orders
WHERE order_status = 'Delivered'
  AND region = 'West';
  
-- Find orders that are cancelled or returned
SELECT *
FROM Orders
WHERE order_status = 'Cancelled'
   OR order_status = 'Returned';
   
-- Find products with missing categories
SELECT *
FROM Products
WHERE category IS NULL;

-- Display product names with their order quantities
SELECT
    Products.product_name,
    Order_Items.quantity
FROM Products
INNER JOIN Order_Items
ON Products.product_id = Order_Items.product_id;  







