CREATE DATABASE SWIGGY;
-- Create Users table
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(20),
    city VARCHAR(100),
    join_date DATE
);

-- Create Restaurants table
CREATE TABLE Restaurants (
    restaurant_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    city VARCHAR(100)
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    restaurant_id INT,
    order_date DATE,
    order_placed_time TIME,
    order_delivered_time TIME,
    total_amount DECIMAL(10, 2),
    order_status VARCHAR(50),
    order_source VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id)
);

-- Create Order_Items table
CREATE TABLE Order_Items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    item_name VARCHAR(255),
    quantity INT,
    unit_price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Create Delivery_Partners table
CREATE TABLE Delivery_Partners (
    delivery_partner_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    city VARCHAR(100)
);

-- Create Restaurant_Ratings table
CREATE TABLE Restaurant_Ratings (
    rating_id INT AUTO_INCREMENT PRIMARY KEY,
    restaurant_id INT,
    user_id INT,
    restaurant_rating DECIMAL(3, 1),
    rating_date DATE,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);


-- Insert sample data into Users table
INSERT INTO Users (name, email, phone_number, city, join_date)
VALUES 
    ('John Doe', 'john@example.com', '+1234567890', 'New Delhi', '2023-01-15'),
    ('Alice Tan', 'alice@example.com', '+1987654321', 'Mumbai', '2023-02-20');

-- Insert sample data into Restaurants table
INSERT INTO Restaurants (name, city)
VALUES 
    ('Pizza Palace', 'Bangalore'),
    ('Sushi Express', 'Hyderabad');

-- Insert sample data into Orders table
INSERT INTO Orders (user_id, restaurant_id, order_date, order_placed_time, order_delivered_time, total_amount, order_status, order_source)
VALUES 
    (1, 1, '2024-06-01', '12:30:00', '13:15:00', 250.00, 'Delivered', 'Mobile App'),
    (2, 2, '2024-06-02', '19:45:00', '20:30:00', 180.00, 'Delivered', 'Website');

-- Insert sample data into Order_Items table
INSERT INTO Order_Items (order_id, item_name, quantity, unit_price)
VALUES 
    (1, 'Margherita', 2, 200.00),
    (1, 'Garlic Bread', 1, 50.00);

-- Insert sample data into Delivery_Partners table
INSERT INTO Delivery_Partners (name, city)
VALUES 
    ('Speedy Deliveries', 'Chennai'),
    ('Swift Couriers', 'Kolkata');

-- Insert sample data into Restaurant_Ratings table
INSERT INTO Restaurant_Ratings (restaurant_id, user_id, restaurant_rating, rating_date)
VALUES 
    (1, 1, 4.5, '2024-05-30'),
    (2, 2, 4.2, '2024-06-03');
-- Q1. How many orders were placed on Swiggy last month?
SELECT COUNT(*) AS total_orders
FROM orders
WHERE DATE_FORMAT(order_date, '%Y-%m') = DATE_FORMAT(CURRENT_DATE - INTERVAL 1 MONTH, '%Y-%m');

-- Q2. Which restaurant received the most orders in the last quarter?
SELECT restaurant_id, COUNT(*) AS total_orders
FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL 3 MONTH
GROUP BY restaurant_id
ORDER BY total_orders DESC
LIMIT 1;  

-- Q3. What is the total revenue generated from orders in the last six months?
SELECT SUM(total_amount) AS total_revenue
FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL 6 MONTH;

-- Q4. How many active users placed orders in the last month?
SELECT COUNT(DISTINCT user_id) AS active_users
FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL 1 MONTH;

-- Q5.Which users placed the most orders in the last month along with their total order count? 
WITH UserOrderCounts AS (
    SELECT user_id, COUNT(*) AS order_count
    FROM Orders
    WHERE order_date >= CURRENT_DATE - INTERVAL 1 MONTH
    GROUP BY user_id
)
SELECT u.name, u.email, u.phone_number, u.city, u.join_date, uo.order_count
FROM Users u
JOIN UserOrderCounts uo ON u.user_id = uo.user_id
ORDER BY uo.order_count DESC;

-- Q6.For each day of the last month, calculate the percentage of orders placed via the Swiggy website.
SELECT 
    DATE(order_date) AS order_date,
    (COUNT(CASE WHEN order_source = 'Website' THEN 1 END) / COUNT(*)) * 100 AS website_order_percentage
FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL 1 MONTH
GROUP BY order_date;

-- Q7.List the top 5 users who spent the most on orders in the last month, along with their total spending.
SELECT u.name, u.email, u.phone_number, u.city, SUM(o.total_amount) AS total_spending_last_month
FROM Users u
JOIN Orders o ON u.user_id = o.user_id
WHERE o.order_date >= CURRENT_DATE - INTERVAL 1 MONTH
GROUP BY u.name, u.email, u.phone_number, u.city
ORDER BY total_spending_last_month DESC
LIMIT 5;

-- Q8. Find the names of users who have placed orders from restaurants located in a city different from their own, along with the names of the restaurants and the cities they ordered from. 
SELECT u.name AS user_name, r.name AS restaurant_name, r.city AS restaurant_city
FROM Users u
JOIN Orders o ON u.user_id = o.user_id
JOIN Restaurants r ON o.restaurant_id = r.restaurant_id
WHERE u.city <> r.city;

-- Q9. List the names of users along with their total spending (revenue generated from their orders) and the city they live in, sorted by total spending in descending order. 
SELECT u.name AS user_name, u.city AS user_city, SUM(o.total_amount) AS total_spending
FROM Users u
JOIN Orders o ON u.user_id = o.user_id
GROUP BY u.name, u.city
ORDER BY total_spending DESC;

-- Q10. List the names of users who have placed orders from restaurants located in cities other than their own, along with the total number of orders placed by each user. Sort the results by the total number of orders in descending order. 
SELECT u.name AS user_name, COUNT(o.order_id) AS total_orders
FROM Users u
JOIN Orders o ON u.user_id = o.user_id
JOIN Restaurants r ON o.restaurant_id = r.restaurant_id
WHERE u.city <> r.city
GROUP BY u.name
ORDER BY total_orders DESC;



