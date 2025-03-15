
-- Create the eCommerce database
CREATE DATABASE IF NOT EXISTS EcomMindDB;
USE EcomMindDB;

-- Create Order History Table
CREATE TABLE IF NOT EXISTS OrderHistory (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    sku VARCHAR(20) NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    category VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    order_date DATETIME NOT NULL,
    status ENUM('Pending', 'Shipped', 'Delivered', 'Cancelled') NOT NULL
);

-- Insert 300 Order History Records
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3230, 'HOU-30441', 'Garbage Bags', 'Household', 6, 54.39, 326.34, '2025-01-26 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4804, 'GRO-44916', 'Rice', 'Grocery', 9, 78.72, 708.48, '2024-03-21 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3182, 'HOU-33459', 'Garbage Bags', 'Household', 10, 50.32, 503.2, '2024-05-30 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3344, 'GRO-94947', 'Olive Oil', 'Grocery', 4, 67.49, 269.96, '2024-08-17 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1019, 'HOU-51241', 'Broom', 'Household', 6, 10.6, 63.6, '2024-09-23 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3041, 'GRO-23564', 'Wheat Flour', 'Grocery', 2, 66.6, 133.2, '2024-09-05 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4375, 'HOU-15647', 'Toilet Paper', 'Household', 7, 65.81, 460.67, '2024-03-30 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1483, 'HOU-68356', 'Laundry Softener', 'Household', 5, 32.12, 160.6, '2024-07-09 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2473, 'GRO-99570', 'Milk Powder', 'Grocery', 6, 26.47, 158.82, '2024-03-26 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2788, 'GRO-85718', 'Sugar', 'Grocery', 6, 94.22, 565.32, '2024-07-24 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2330, 'GRO-23237', 'Olive Oil', 'Grocery', 10, 85.56, 855.6, '2024-09-02 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1204, 'GRO-98123', 'Tea', 'Grocery', 6, 46.89, 281.34, '2025-01-23 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2054, 'HOU-93470', 'Toilet Paper', 'Household', 9, 41.75, 375.75, '2024-09-04 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3556, 'HOU-82361', 'Detergent', 'Household', 6, 28.81, 172.86, '2025-02-21 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2714, 'GRO-22825', 'Tea', 'Grocery', 5, 79.99, 399.95, '2024-11-05 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3825, 'GRO-94532', 'Wheat Flour', 'Grocery', 5, 46.01, 230.05, '2024-07-05 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4733, 'HOU-48227', 'Laundry Softener', 'Household', 8, 68.04, 544.32, '2024-03-20 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2779, 'GRO-10326', 'Sugar', 'Grocery', 6, 11.54, 69.24, '2024-08-02 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3202, 'GRO-33520', 'Wheat Flour', 'Grocery', 1, 76.46, 76.46, '2024-06-13 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4258, 'GRO-57016', 'Pasta', 'Grocery', 6, 41.33, 247.98, '2024-10-14 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2493, 'HOU-30385', 'Toilet Paper', 'Household', 2, 27.26, 54.52, '2024-04-03 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3995, 'GRO-15111', 'Wheat Flour', 'Grocery', 5, 78.61, 393.05, '2024-07-09 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3608, 'GRO-30540', 'Sugar', 'Grocery', 6, 64.61, 387.66, '2025-01-14 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2884, 'GRO-29710', 'Pasta', 'Grocery', 1, 60.92, 60.92, '2024-08-26 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2821, 'GRO-10616', 'Honey', 'Grocery', 6, 10.32, 61.92, '2024-05-04 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2115, 'HOU-36752', 'Paper Towels', 'Household', 8, 57.67, 461.36, '2024-07-03 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3045, 'GRO-50484', 'Pasta', 'Grocery', 9, 26.07, 234.63, '2024-09-01 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3507, 'GRO-72647', 'Salt', 'Grocery', 9, 10.54, 94.86, '2024-04-26 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1111, 'HOU-33668', 'Paper Towels', 'Household', 4, 25.86, 103.44, '2024-10-09 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2773, 'GRO-81585', 'Olive Oil', 'Grocery', 1, 26.48, 26.48, '2025-03-01 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3807, 'GRO-17781', 'Sugar', 'Grocery', 8, 17.52, 140.16, '2024-07-13 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1712, 'GRO-57598', 'Rice', 'Grocery', 8, 85.59, 684.72, '2024-11-07 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3716, 'GRO-52656', 'Rice', 'Grocery', 2, 10.03, 20.06, '2024-06-28 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3812, 'GRO-49681', 'Olive Oil', 'Grocery', 10, 13.88, 138.8, '2024-08-14 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2591, 'HOU-50481', 'Mop', 'Household', 8, 44.3, 354.4, '2024-05-06 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3324, 'HOU-84494', 'Broom', 'Household', 2, 17.77, 35.54, '2024-07-06 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3078, 'GRO-82296', 'Milk Powder', 'Grocery', 9, 77.78, 700.02, '2024-10-26 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3675, 'HOU-85685', 'Paper Towels', 'Household', 10, 28.72, 287.2, '2024-04-26 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3287, 'GRO-72255', 'Tea', 'Grocery', 8, 35.5, 284.0, '2024-04-01 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4267, 'HOU-23214', 'Dish Soap', 'Household', 8, 17.32, 138.56, '2024-08-10 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2286, 'GRO-26080', 'Coffee', 'Grocery', 6, 15.54, 93.24, '2024-04-06 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1668, 'GRO-63897', 'Coffee', 'Grocery', 5, 45.45, 227.25, '2024-12-31 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1696, 'GRO-80455', 'Olive Oil', 'Grocery', 7, 36.37, 254.59, '2024-05-19 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2031, 'GRO-30555', 'Tea', 'Grocery', 7, 62.94, 440.58, '2024-04-10 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3842, 'HOU-19477', 'Toilet Paper', 'Household', 7, 64.32, 450.24, '2024-05-09 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2309, 'HOU-65144', 'Sponges', 'Household', 4, 90.23, 360.92, '2024-05-29 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3580, 'HOU-85357', 'Mop', 'Household', 2, 44.12, 88.24, '2024-12-09 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3393, 'GRO-18205', 'Tea', 'Grocery', 4, 80.7, 322.8, '2024-10-13 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3072, 'HOU-31458', 'Garbage Bags', 'Household', 10, 19.68, 196.8, '2024-04-26 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2664, 'GRO-30811', 'Olive Oil', 'Grocery', 6, 45.63, 273.78, '2024-05-15 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3153, 'HOU-50025', 'Broom', 'Household', 2, 60.02, 120.04, '2024-12-25 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2842, 'HOU-75002', 'Laundry Softener', 'Household', 7, 92.18, 645.26, '2024-12-17 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4272, 'HOU-99825', 'Dish Soap', 'Household', 2, 31.36, 62.72, '2024-12-02 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4602, 'GRO-50634', 'Milk Powder', 'Grocery', 2, 45.42, 90.84, '2024-04-10 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1201, 'HOU-42912', 'Mop', 'Household', 2, 29.22, 58.44, '2024-12-17 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4694, 'HOU-10018', 'Air Freshener', 'Household', 1, 72.5, 72.5, '2024-05-13 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2566, 'GRO-57247', 'Rice', 'Grocery', 9, 48.19, 433.71, '2024-09-27 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3869, 'GRO-20645', 'Tea', 'Grocery', 10, 52.96, 529.6, '2024-05-13 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3618, 'HOU-98027', 'Detergent', 'Household', 10, 5.49, 54.9, '2024-07-27 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4574, 'GRO-48885', 'Honey', 'Grocery', 1, 37.72, 37.72, '2024-09-12 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3676, 'HOU-72455', 'Laundry Softener', 'Household', 3, 22.98, 68.94, '2024-05-01 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3738, 'GRO-26178', 'Pasta', 'Grocery', 5, 69.66, 348.3, '2024-05-02 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2759, 'HOU-47418', 'Sponges', 'Household', 10, 10.41, 104.1, '2025-01-30 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3806, 'GRO-53504', 'Coffee', 'Grocery', 4, 95.03, 380.12, '2024-12-03 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3227, 'GRO-56109', 'Salt', 'Grocery', 10, 21.02, 210.2, '2024-04-12 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1830, 'HOU-88642', 'Broom', 'Household', 1, 41.09, 41.09, '2025-03-06 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2271, 'GRO-11082', 'Rice', 'Grocery', 4, 20.33, 81.32, '2025-01-13 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1035, 'HOU-87115', 'Garbage Bags', 'Household', 5, 14.09, 70.45, '2024-12-22 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4601, 'GRO-80894', 'Milk Powder', 'Grocery', 4, 94.57, 378.28, '2025-02-20 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3544, 'GRO-49108', 'Honey', 'Grocery', 6, 52.0, 312.0, '2024-07-08 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1953, 'HOU-63725', 'Dish Soap', 'Household', 7, 36.03, 252.21, '2024-12-11 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4695, 'HOU-36726', 'Laundry Softener', 'Household', 5, 34.47, 172.35, '2024-12-01 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3619, 'GRO-62041', 'Wheat Flour', 'Grocery', 7, 51.97, 363.79, '2025-02-10 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4249, 'HOU-26190', 'Air Freshener', 'Household', 9, 97.82, 880.38, '2024-08-24 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4073, 'HOU-76553', 'Detergent', 'Household', 9, 25.55, 229.95, '2025-01-09 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2777, 'HOU-91878', 'Broom', 'Household', 4, 81.95, 327.8, '2024-11-29 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1098, 'GRO-27284', 'Salt', 'Grocery', 8, 65.71, 525.68, '2024-08-31 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2683, 'GRO-66874', 'Rice', 'Grocery', 5, 52.44, 262.2, '2024-05-30 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1205, 'GRO-26856', 'Sugar', 'Grocery', 4, 36.87, 147.48, '2025-01-01 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1717, 'GRO-13408', 'Pasta', 'Grocery', 8, 7.93, 63.44, '2024-07-09 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4790, 'GRO-28463', 'Pasta', 'Grocery', 8, 84.08, 672.64, '2024-08-30 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4861, 'HOU-43750', 'Garbage Bags', 'Household', 6, 56.2, 337.2, '2024-07-12 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4606, 'GRO-63151', 'Sugar', 'Grocery', 5, 21.55, 107.75, '2024-11-21 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4771, 'GRO-86380', 'Sugar', 'Grocery', 5, 18.6, 93.0, '2024-09-26 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1890, 'GRO-15274', 'Coffee', 'Grocery', 2, 60.27, 120.54, '2024-12-08 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4257, 'GRO-74032', 'Olive Oil', 'Grocery', 1, 98.33, 98.33, '2024-07-31 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4220, 'HOU-95583', 'Dish Soap', 'Household', 2, 97.2, 194.4, '2025-01-14 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2943, 'HOU-17245', 'Mop', 'Household', 4, 45.69, 182.76, '2024-11-22 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4513, 'GRO-75155', 'Milk Powder', 'Grocery', 1, 75.05, 75.05, '2024-11-24 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4820, 'GRO-64746', 'Coffee', 'Grocery', 6, 17.91, 107.46, '2024-07-19 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2891, 'HOU-58962', 'Dish Soap', 'Household', 10, 30.98, 309.8, '2024-04-18 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4678, 'GRO-47888', 'Wheat Flour', 'Grocery', 8, 76.73, 613.84, '2024-04-15 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1756, 'GRO-81529', 'Tea', 'Grocery', 3, 50.04, 150.12, '2024-11-20 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2513, 'HOU-63889', 'Dish Soap', 'Household', 4, 31.26, 125.04, '2024-04-28 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1899, 'GRO-63422', 'Wheat Flour', 'Grocery', 4, 11.8, 47.2, '2024-12-10 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4683, 'GRO-21488', 'Wheat Flour', 'Grocery', 4, 33.77, 135.08, '2024-12-31 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1831, 'GRO-97999', 'Sugar', 'Grocery', 1, 63.9, 63.9, '2025-03-12 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3867, 'GRO-43429', 'Salt', 'Grocery', 6, 8.23, 49.38, '2024-12-31 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1766, 'GRO-41128', 'Olive Oil', 'Grocery', 9, 95.48, 859.32, '2025-01-03 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2668, 'HOU-94939', 'Detergent', 'Household', 1, 9.01, 9.01, '2024-04-06 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1543, 'HOU-11071', 'Garbage Bags', 'Household', 1, 78.52, 78.52, '2024-12-08 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2679, 'GRO-63675', 'Milk Powder', 'Grocery', 1, 66.3, 66.3, '2024-10-30 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1234, 'GRO-33112', 'Milk Powder', 'Grocery', 8, 51.51, 412.08, '2024-10-31 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3498, 'GRO-33921', 'Salt', 'Grocery', 1, 72.19, 72.19, '2025-03-05 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2036, 'GRO-79670', 'Coffee', 'Grocery', 3, 51.64, 154.92, '2025-02-05 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2712, 'HOU-30399', 'Paper Towels', 'Household', 8, 5.85, 46.8, '2024-07-21 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2368, 'GRO-78034', 'Coffee', 'Grocery', 4, 52.23, 208.92, '2024-12-07 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1875, 'HOU-50070', 'Paper Towels', 'Household', 9, 21.02, 189.18, '2024-09-02 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1071, 'HOU-27858', 'Laundry Softener', 'Household', 4, 97.94, 391.76, '2024-09-14 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4060, 'HOU-42479', 'Air Freshener', 'Household', 10, 10.97, 109.7, '2024-08-21 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3821, 'GRO-36695', 'Sugar', 'Grocery', 9, 33.68, 303.12, '2024-04-18 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4933, 'GRO-85949', 'Wheat Flour', 'Grocery', 6, 73.5, 441.0, '2024-06-08 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4108, 'GRO-35812', 'Olive Oil', 'Grocery', 8, 12.71, 101.68, '2024-05-12 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1799, 'HOU-36072', 'Toilet Paper', 'Household', 5, 32.18, 160.9, '2024-04-04 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2333, 'GRO-68734', 'Milk Powder', 'Grocery', 9, 11.41, 102.69, '2024-05-11 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1760, 'HOU-31451', 'Dish Soap', 'Household', 5, 55.63, 278.15, '2024-06-11 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4566, 'HOU-96264', 'Dish Soap', 'Household', 4, 16.31, 65.24, '2024-03-19 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2731, 'GRO-67878', 'Rice', 'Grocery', 9, 27.25, 245.25, '2024-03-18 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1891, 'GRO-53396', 'Olive Oil', 'Grocery', 5, 99.89, 499.45, '2025-02-20 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2469, 'HOU-39780', 'Paper Towels', 'Household', 8, 41.79, 334.32, '2024-07-14 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3982, 'HOU-45973', 'Air Freshener', 'Household', 9, 97.01, 873.09, '2024-10-12 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3927, 'HOU-40044', 'Paper Towels', 'Household', 3, 55.71, 167.13, '2024-07-22 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4590, 'GRO-17837', 'Salt', 'Grocery', 5, 81.97, 409.85, '2024-07-19 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3698, 'HOU-14762', 'Detergent', 'Household', 7, 49.63, 347.41, '2024-10-02 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3560, 'GRO-55182', 'Coffee', 'Grocery', 5, 62.14, 310.7, '2024-04-01 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2187, 'GRO-79114', 'Tea', 'Grocery', 6, 33.55, 201.3, '2024-05-19 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1388, 'GRO-55595', 'Honey', 'Grocery', 7, 93.85, 656.95, '2025-01-08 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4304, 'HOU-15017', 'Detergent', 'Household', 6, 69.39, 416.34, '2024-09-28 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4169, 'GRO-68732', 'Coffee', 'Grocery', 10, 24.24, 242.4, '2025-01-28 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4060, 'GRO-52404', 'Pasta', 'Grocery', 6, 97.13, 582.78, '2024-09-24 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4339, 'GRO-20639', 'Honey', 'Grocery', 9, 90.33, 812.97, '2025-02-13 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3759, 'HOU-12190', 'Broom', 'Household', 10, 89.35, 893.5, '2024-08-29 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1438, 'GRO-62117', 'Milk Powder', 'Grocery', 7, 38.61, 270.27, '2024-03-26 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3579, 'GRO-16621', 'Salt', 'Grocery', 7, 63.27, 442.89, '2024-03-25 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3625, 'HOU-48443', 'Air Freshener', 'Household', 6, 87.66, 525.96, '2024-03-15 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2828, 'HOU-47176', 'Sponges', 'Household', 5, 31.61, 158.05, '2024-05-21 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1513, 'HOU-55252', 'Garbage Bags', 'Household', 3, 7.22, 21.66, '2024-09-21 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3034, 'HOU-54889', 'Garbage Bags', 'Household', 3, 16.7, 50.1, '2024-09-27 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2436, 'GRO-73058', 'Rice', 'Grocery', 3, 49.81, 149.43, '2024-10-26 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3218, 'HOU-30751', 'Air Freshener', 'Household', 2, 9.15, 18.3, '2024-08-07 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1315, 'HOU-13349', 'Laundry Softener', 'Household', 6, 64.38, 386.28, '2025-03-14 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1167, 'HOU-31514', 'Broom', 'Household', 10, 69.84, 698.4, '2024-05-03 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3184, 'HOU-29083', 'Sponges', 'Household', 2, 98.3, 196.6, '2024-08-11 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2199, 'GRO-20007', 'Coffee', 'Grocery', 6, 25.82, 154.92, '2025-01-04 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1890, 'GRO-46352', 'Salt', 'Grocery', 10, 97.54, 975.4, '2024-07-21 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1438, 'HOU-90204', 'Detergent', 'Household', 5, 84.35, 421.75, '2024-12-05 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4751, 'HOU-51059', 'Paper Towels', 'Household', 4, 95.54, 382.16, '2024-06-26 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4412, 'GRO-28214', 'Olive Oil', 'Grocery', 5, 98.08, 490.4, '2024-04-01 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3031, 'GRO-22289', 'Wheat Flour', 'Grocery', 7, 65.61, 459.27, '2024-04-13 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1243, 'HOU-57085', 'Air Freshener', 'Household', 6, 61.63, 369.78, '2024-12-10 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2317, 'GRO-80998', 'Coffee', 'Grocery', 5, 87.87, 439.35, '2024-10-04 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2116, 'HOU-64206', 'Laundry Softener', 'Household', 8, 62.7, 501.6, '2025-01-17 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2177, 'GRO-93194', 'Wheat Flour', 'Grocery', 5, 66.58, 332.9, '2024-09-02 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3835, 'GRO-73779', 'Olive Oil', 'Grocery', 6, 64.59, 387.54, '2024-12-10 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4684, 'HOU-63926', 'Broom', 'Household', 7, 45.18, 316.26, '2024-09-13 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3545, 'GRO-23925', 'Sugar', 'Grocery', 1, 49.75, 49.75, '2024-03-17 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1542, 'HOU-48729', 'Toilet Paper', 'Household', 4, 66.08, 264.32, '2025-03-14 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1038, 'HOU-26875', 'Paper Towels', 'Household', 1, 23.25, 23.25, '2024-04-25 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1134, 'HOU-76824', 'Dish Soap', 'Household', 6, 9.13, 54.78, '2025-01-12 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3867, 'HOU-37652', 'Sponges', 'Household', 4, 89.36, 357.44, '2024-09-08 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1352, 'HOU-73177', 'Detergent', 'Household', 3, 78.56, 235.68, '2024-11-15 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2387, 'GRO-39607', 'Milk Powder', 'Grocery', 1, 23.84, 23.84, '2025-01-24 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1785, 'GRO-22230', 'Sugar', 'Grocery', 3, 54.62, 163.86, '2024-04-28 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4559, 'GRO-86589', 'Coffee', 'Grocery', 3, 19.94, 59.82, '2025-02-16 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3568, 'HOU-18889', 'Broom', 'Household', 3, 80.31, 240.93, '2024-04-07 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1314, 'HOU-95065', 'Paper Towels', 'Household', 6, 41.67, 250.02, '2025-01-05 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3184, 'HOU-40716', 'Air Freshener', 'Household', 9, 23.41, 210.69, '2025-02-05 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4664, 'GRO-19653', 'Milk Powder', 'Grocery', 7, 50.4, 352.8, '2024-06-03 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3028, 'HOU-66289', 'Paper Towels', 'Household', 3, 17.14, 51.42, '2024-07-14 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3066, 'GRO-50878', 'Pasta', 'Grocery', 6, 97.15, 582.9, '2024-06-17 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3893, 'GRO-62681', 'Rice', 'Grocery', 3, 23.62, 70.86, '2025-02-06 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2798, 'GRO-21924', 'Honey', 'Grocery', 3, 92.11, 276.33, '2025-01-13 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4193, 'HOU-73364', 'Mop', 'Household', 5, 70.64, 353.2, '2024-04-27 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3811, 'GRO-77131', 'Wheat Flour', 'Grocery', 8, 73.41, 587.28, '2025-01-10 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3421, 'HOU-76043', 'Garbage Bags', 'Household', 1, 9.48, 9.48, '2024-11-12 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3576, 'HOU-63932', 'Garbage Bags', 'Household', 3, 24.29, 72.87, '2025-02-21 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3563, 'GRO-57586', 'Milk Powder', 'Grocery', 6, 55.63, 333.78, '2024-06-21 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2544, 'HOU-47318', 'Detergent', 'Household', 10, 54.06, 540.6, '2024-05-22 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1733, 'GRO-36759', 'Tea', 'Grocery', 2, 39.9, 79.8, '2024-12-22 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3135, 'GRO-42755', 'Milk Powder', 'Grocery', 3, 97.02, 291.06, '2024-05-07 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1036, 'HOU-70978', 'Dish Soap', 'Household', 7, 32.56, 227.92, '2024-08-22 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3327, 'HOU-80647', 'Air Freshener', 'Household', 6, 50.08, 300.48, '2024-07-17 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4354, 'GRO-27585', 'Honey', 'Grocery', 5, 19.42, 97.1, '2024-11-06 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4803, 'GRO-69690', 'Salt', 'Grocery', 9, 83.72, 753.48, '2024-09-25 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1537, 'HOU-24573', 'Mop', 'Household', 8, 58.07, 464.56, '2024-12-02 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2550, 'GRO-54969', 'Olive Oil', 'Grocery', 2, 10.06, 20.12, '2024-12-16 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2690, 'HOU-84973', 'Laundry Softener', 'Household', 6, 80.49, 482.94, '2025-01-28 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2313, 'HOU-72037', 'Broom', 'Household', 8, 29.64, 237.12, '2025-02-02 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1480, 'GRO-34596', 'Coffee', 'Grocery', 3, 27.21, 81.63, '2024-09-16 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4934, 'GRO-31734', 'Salt', 'Grocery', 8, 88.63, 709.04, '2025-02-19 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3125, 'GRO-48742', 'Rice', 'Grocery', 3, 44.71, 134.13, '2024-12-18 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3439, 'GRO-30201', 'Sugar', 'Grocery', 8, 18.57, 148.56, '2024-10-30 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1929, 'HOU-45414', 'Detergent', 'Household', 1, 74.38, 74.38, '2024-04-30 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2221, 'GRO-59438', 'Rice', 'Grocery', 7, 48.87, 342.09, '2024-07-28 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1359, 'HOU-44213', 'Mop', 'Household', 2, 21.5, 43.0, '2025-02-11 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4924, 'GRO-30287', 'Wheat Flour', 'Grocery', 5, 32.29, 161.45, '2025-01-25 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2667, 'GRO-40786', 'Pasta', 'Grocery', 7, 26.78, 187.46, '2024-03-19 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4980, 'GRO-30046', 'Sugar', 'Grocery', 7, 15.62, 109.34, '2024-10-25 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2530, 'GRO-71677', 'Pasta', 'Grocery', 5, 19.26, 96.3, '2024-04-26 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2627, 'HOU-46000', 'Sponges', 'Household', 10, 66.69, 666.9, '2025-01-18 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2028, 'HOU-34585', 'Dish Soap', 'Household', 3, 66.98, 200.94, '2024-06-07 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3244, 'HOU-57457', 'Garbage Bags', 'Household', 1, 70.5, 70.5, '2025-02-09 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3887, 'GRO-95272', 'Tea', 'Grocery', 7, 59.45, 416.15, '2024-06-23 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1167, 'HOU-82959', 'Garbage Bags', 'Household', 9, 66.71, 600.39, '2024-04-12 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2325, 'GRO-30537', 'Coffee', 'Grocery', 1, 87.65, 87.65, '2024-10-18 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3726, 'HOU-18883', 'Mop', 'Household', 5, 91.67, 458.35, '2024-05-22 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3370, 'GRO-35854', 'Wheat Flour', 'Grocery', 6, 97.21, 583.26, '2024-12-11 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3344, 'HOU-41703', 'Broom', 'Household', 3, 70.5, 211.5, '2025-02-15 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4015, 'GRO-51543', 'Sugar', 'Grocery', 10, 8.06, 80.6, '2025-02-09 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2836, 'GRO-40700', 'Sugar', 'Grocery', 1, 44.82, 44.82, '2025-01-18 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2628, 'GRO-80405', 'Rice', 'Grocery', 3, 33.34, 100.02, '2024-03-29 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3071, 'HOU-58107', 'Detergent', 'Household', 9, 74.41, 669.69, '2025-01-16 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1267, 'GRO-27196', 'Salt', 'Grocery', 9, 80.93, 728.37, '2024-12-17 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3536, 'HOU-97715', 'Paper Towels', 'Household', 7, 23.46, 164.22, '2024-05-22 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2564, 'HOU-84397', 'Laundry Softener', 'Household', 3, 93.64, 280.92, '2024-12-11 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2846, 'GRO-49804', 'Milk Powder', 'Grocery', 5, 18.59, 92.95, '2025-02-09 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1061, 'HOU-55316', 'Mop', 'Household', 5, 91.07, 455.35, '2024-04-02 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2826, 'GRO-44163', 'Tea', 'Grocery', 8, 51.72, 413.76, '2024-06-14 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1142, 'HOU-87201', 'Mop', 'Household', 10, 20.29, 202.9, '2025-02-23 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4976, 'HOU-18798', 'Laundry Softener', 'Household', 8, 87.24, 697.92, '2025-01-03 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4755, 'HOU-17602', 'Garbage Bags', 'Household', 1, 20.32, 20.32, '2024-05-07 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3378, 'HOU-99716', 'Toilet Paper', 'Household', 1, 52.1, 52.1, '2025-02-16 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1462, 'GRO-16615', 'Rice', 'Grocery', 1, 55.3, 55.3, '2024-05-31 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2032, 'HOU-63151', 'Sponges', 'Household', 4, 77.75, 311.0, '2024-08-18 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3387, 'HOU-37135', 'Detergent', 'Household', 4, 96.03, 384.12, '2024-06-07 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2939, 'GRO-13558', 'Sugar', 'Grocery', 7, 43.72, 306.04, '2024-03-19 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3953, 'HOU-16369', 'Garbage Bags', 'Household', 7, 63.05, 441.35, '2024-05-14 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4159, 'HOU-38898', 'Laundry Softener', 'Household', 7, 68.75, 481.25, '2024-11-22 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3565, 'HOU-28157', 'Broom', 'Household', 5, 85.58, 427.9, '2024-03-15 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4572, 'HOU-21608', 'Sponges', 'Household', 3, 48.44, 145.32, '2024-11-12 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2342, 'GRO-52500', 'Sugar', 'Grocery', 5, 24.06, 120.3, '2024-06-23 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4617, 'HOU-22254', 'Dish Soap', 'Household', 10, 9.25, 92.5, '2025-02-13 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1640, 'HOU-29258', 'Laundry Softener', 'Household', 6, 81.98, 491.88, '2024-12-17 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2182, 'HOU-98498', 'Laundry Softener', 'Household', 1, 30.37, 30.37, '2024-04-01 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4163, 'GRO-58891', 'Olive Oil', 'Grocery', 6, 39.37, 236.22, '2024-10-12 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3085, 'HOU-21113', 'Garbage Bags', 'Household', 4, 11.22, 44.88, '2024-03-30 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4572, 'GRO-76092', 'Coffee', 'Grocery', 3, 20.59, 61.77, '2024-03-30 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3579, 'GRO-86550', 'Wheat Flour', 'Grocery', 2, 65.93, 131.86, '2025-02-06 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3462, 'HOU-21467', 'Detergent', 'Household', 8, 43.27, 346.16, '2024-09-11 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3363, 'HOU-88967', 'Toilet Paper', 'Household', 9, 17.51, 157.59, '2024-04-03 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3458, 'GRO-40274', 'Wheat Flour', 'Grocery', 8, 64.45, 515.6, '2024-04-19 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4752, 'HOU-14865', 'Dish Soap', 'Household', 3, 19.97, 59.91, '2024-04-08 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4093, 'HOU-99993', 'Dish Soap', 'Household', 2, 33.58, 67.16, '2024-07-31 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2401, 'HOU-47600', 'Paper Towels', 'Household', 9, 67.84, 610.56, '2024-11-22 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3014, 'GRO-74717', 'Sugar', 'Grocery', 10, 36.12, 361.2, '2024-11-18 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2717, 'HOU-15437', 'Sponges', 'Household', 5, 30.95, 154.75, '2024-04-04 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4391, 'HOU-87223', 'Paper Towels', 'Household', 10, 97.83, 978.3, '2024-06-25 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1029, 'GRO-11012', 'Tea', 'Grocery', 2, 82.5, 165.0, '2024-09-01 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4697, 'HOU-33852', 'Sponges', 'Household', 10, 72.99, 729.9, '2024-08-10 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4188, 'GRO-22133', 'Honey', 'Grocery', 8, 91.63, 733.04, '2024-03-16 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4875, 'GRO-88457', 'Milk Powder', 'Grocery', 7, 77.35, 541.45, '2024-04-13 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4866, 'GRO-37219', 'Milk Powder', 'Grocery', 4, 78.06, 312.24, '2025-03-06 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2195, 'GRO-18899', 'Sugar', 'Grocery', 4, 56.3, 225.2, '2025-02-11 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1637, 'HOU-18879', 'Mop', 'Household', 3, 55.34, 166.02, '2024-07-23 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3179, 'HOU-21017', 'Paper Towels', 'Household', 4, 21.09, 84.36, '2024-10-08 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1305, 'HOU-84563', 'Garbage Bags', 'Household', 2, 80.11, 160.22, '2024-07-23 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3219, 'HOU-66580', 'Dish Soap', 'Household', 1, 57.48, 57.48, '2024-11-30 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2506, 'HOU-93828', 'Dish Soap', 'Household', 1, 83.72, 83.72, '2025-01-26 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2006, 'GRO-98610', 'Honey', 'Grocery', 10, 19.23, 192.3, '2024-09-14 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2420, 'GRO-33999', 'Olive Oil', 'Grocery', 4, 95.14, 380.56, '2025-01-22 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2987, 'GRO-63712', 'Wheat Flour', 'Grocery', 2, 87.13, 174.26, '2024-08-02 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4206, 'HOU-63341', 'Paper Towels', 'Household', 4, 32.34, 129.36, '2024-05-16 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2883, 'GRO-56588', 'Pasta', 'Grocery', 5, 63.5, 317.5, '2024-07-30 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2973, 'HOU-38735', 'Sponges', 'Household', 4, 94.01, 376.04, '2024-04-05 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1520, 'HOU-66894', 'Paper Towels', 'Household', 6, 62.69, 376.14, '2024-12-18 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3305, 'HOU-82453', 'Paper Towels', 'Household', 10, 60.65, 606.5, '2024-12-14 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1316, 'GRO-56223', 'Wheat Flour', 'Grocery', 10, 27.98, 279.8, '2025-01-09 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3524, 'GRO-47403', 'Sugar', 'Grocery', 2, 58.61, 117.22, '2024-12-02 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2403, 'HOU-84746', 'Detergent', 'Household', 6, 69.05, 414.3, '2024-10-28 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2297, 'GRO-84959', 'Salt', 'Grocery', 10, 97.72, 977.2, '2025-03-04 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2432, 'GRO-12383', 'Pasta', 'Grocery', 3, 90.05, 270.15, '2024-09-14 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2197, 'HOU-70199', 'Garbage Bags', 'Household', 5, 98.55, 492.75, '2024-11-05 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1233, 'GRO-59828', 'Salt', 'Grocery', 1, 98.19, 98.19, '2025-01-22 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2800, 'GRO-87036', 'Salt', 'Grocery', 4, 18.02, 72.08, '2025-03-02 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2598, 'GRO-77342', 'Pasta', 'Grocery', 1, 45.55, 45.55, '2024-07-21 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2472, 'GRO-19445', 'Olive Oil', 'Grocery', 4, 99.15, 396.6, '2024-11-21 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1061, 'HOU-73813', 'Dish Soap', 'Household', 6, 54.85, 329.1, '2024-11-14 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2203, 'HOU-40315', 'Dish Soap', 'Household', 9, 98.6, 887.4, '2024-07-29 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1422, 'HOU-40425', 'Garbage Bags', 'Household', 2, 23.63, 47.26, '2025-01-19 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4546, 'GRO-81421', 'Olive Oil', 'Grocery', 3, 87.28, 261.84, '2025-01-22 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4946, 'GRO-84319', 'Olive Oil', 'Grocery', 8, 54.9, 439.2, '2024-12-29 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2506, 'HOU-83291', 'Mop', 'Household', 2, 88.22, 176.44, '2024-12-07 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4016, 'HOU-27657', 'Mop', 'Household', 10, 36.16, 361.6, '2024-03-26 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1962, 'GRO-75404', 'Wheat Flour', 'Grocery', 6, 45.05, 270.3, '2024-06-05 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4642, 'HOU-61529', 'Paper Towels', 'Household', 3, 93.62, 280.86, '2024-08-22 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4181, 'HOU-25519', 'Sponges', 'Household', 1, 44.07, 44.07, '2024-11-04 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(3485, 'GRO-12824', 'Coffee', 'Grocery', 4, 18.08, 72.32, '2024-07-17 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1482, 'HOU-87326', 'Air Freshener', 'Household', 3, 17.01, 51.03, '2024-12-14 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1921, 'HOU-71081', 'Broom', 'Household', 10, 37.49, 374.9, '2024-05-14 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1533, 'HOU-28607', 'Laundry Softener', 'Household', 1, 51.46, 51.46, '2024-08-22 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(4311, 'GRO-99078', 'Salt', 'Grocery', 7, 53.37, 373.59, '2024-12-23 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2657, 'HOU-29587', 'Air Freshener', 'Household', 8, 19.51, 156.08, '2024-10-12 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1265, 'HOU-11960', 'Garbage Bags', 'Household', 6, 47.74, 286.44, '2024-04-23 14:41:06', 'Delivered');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1030, 'GRO-68312', 'Rice', 'Grocery', 6, 28.8, 172.8, '2024-12-21 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2734, 'HOU-35827', 'Toilet Paper', 'Household', 5, 86.01, 430.05, '2024-04-12 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2040, 'HOU-90212', 'Garbage Bags', 'Household', 1, 11.01, 11.01, '2024-11-02 14:41:06', 'Cancelled');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(2597, 'HOU-95983', 'Dish Soap', 'Household', 9, 55.83, 502.47, '2024-08-20 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1099, 'GRO-77263', 'Coffee', 'Grocery', 1, 72.94, 72.94, '2025-03-08 14:41:06', 'Shipped');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1773, 'GRO-25323', 'Salt', 'Grocery', 8, 8.49, 67.92, '2024-08-08 14:41:06', 'Pending');
INSERT INTO OrderHistory (customer_id, sku, product_name, category, quantity, price, total_price, order_date, status) VALUES 
(1567, 'GRO-28589', 'Sugar', 'Grocery', 2, 38.84, 77.68, '2024-11-18 14:41:06', 'Cancelled');
