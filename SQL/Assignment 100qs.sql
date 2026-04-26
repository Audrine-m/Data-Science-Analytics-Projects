-- CREATE schema assignment
CREATE SCHEMA assignment;

set search_path to assignment;
show search_path;

-- CREATE Customers table in the assignment schema
CREATE TABLE assignment.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);
-- CREATE Products table in the assignment schema
CREATE TABLE assignment.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);
-- CREATE Sales table in the assignment schema
CREATE TABLE assignment.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- CREATE Inventory table in the assignment schema
CREATE TABLE assignment.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- Inserting data into assignment.Customers table
INSERT INTO assignment.Customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

select * from assignment.customers;

-- Inserting data into assignment.Products table
INSERT INTO assignment.Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

select * from assignment.products;

-- Inserting data into assignment.Sales table
INSERT INTO assignment.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

-- Inserting data into assignment.Inventory table
INSERT INTO assignment.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);

-- Select all data from assignment.Customers table
SELECT * FROM assignment.Customers;

-- Select all data from assignment.Products table
SELECT * FROM assignment.Products;

-- Select all data from assignment.Sales table
SELECT * FROM assignment.Sales;

-- Select all data from assignment.Inventory table
SELECT * FROM assignment.Inventory;

-- 1. Write a query to select all data from the `Customers` table.
select * from customers;

-- 2. Write a query to select the total number of products from the `Products` table.
select count(*) from products;

-- 3. Write a query to select the product name and its price from the `Products` table where the price is greater than 500.
select product_name from products where price > 500;


-- 4. Write a query to find the average price of all products from the `Products` table.
select avg (price) as average_price from products;

-- 5. Write a query to find the total sales amount across all records from the `Sales` table.
select sum (total_amount) as total_sales from sales;

-- 6. Write a query to select distinct membership statuses from the `Customers` table.
select distinct membership_status from customers;

-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.
select concat ( first_name, ' ', last_name ) as full_name from customers; 

-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.
select product_name from products where category = 'Electronics';

-- 9. Write a query to find the highest price from the `Products` table.
select max(price) from products;

-- 10. Write a query to count the number of sales for each product from the `Sales` table.
SELECT 
    product_id, 
    COUNT(*) AS sales_count
FROM 
    Sales
GROUP BY 
    product_id;

-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.
SELECT 
    product_id, 
    SUM(quantity_sold) AS total_quantity_sold
FROM 
    Sales
GROUP BY 
    product_id;

-- 12. Write a query to find the lowest price of products in the `Products` table.
SELECT MIN(price) AS lowest_price
FROM Products;

-- 13. Write a query to find customers who have purchased products with a price greater than 1000.
SELECT DISTINCT c.customer_id
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id
JOIN products p ON s.product_id = p.product_id
WHERE p.price > 1000;


-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and Show product name and total sales amount per product
SELECT 
    p.product_name, 
    SUM(s.quantity_sold * p.price) AS total_sales_amount
FROM 
    Sales s
JOIN 
    Products p ON s.product_id = p.product_id
GROUP BY 
    p.product_name;



-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.
SELECT 
    c.customer_id, 
    SUM(s.quantity_sold * s.total_amount) AS total_amount_spent
FROM 
    Customers c
JOIN 
    Sales s ON c.customer_id = s.customer_id
GROUP BY 
    c.customer_id;


-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.
SELECT 
    c.first_name, 
    c.last_name, 
    p.product_name, 
    s.quantity_sold
FROM 
    Customers c
JOIN 
    Sales s ON c.customer_id = s.customer_id
JOIN 
    Products p ON s.product_id = p.product_id;

-- 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.
SELECT 
    c1.customer_id AS customer1_id,
    c2.customer_id AS customer2_id,
    c1.membership_status
FROM 
    Customers c1
JOIN 
    Customers c2 
    ON c1.membership_status = c2.membership_status
   AND c1.customer_id < c2.customer_id;


-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.
SELECT 
    p.product_name, 
    COUNT(s.sale_id) AS total_sales_count
FROM 
    Sales s
JOIN 
    Products p ON s.product_id = p.product_id
GROUP BY 
    p.product_name;


-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.
SELECT 
    product_id, 
    product_name, 
    stock_quantity
FROM 
    Products
WHERE 
    stock_quantity < 10;


-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with total sales quantity greater than 5.
SELECT 
    p.product_name, 
    SUM(s.quantity_sold) AS total_quantity_sold
FROM 
    Sales s
JOIN 
    Products p ON s.product_id = p.product_id
GROUP BY 
    p.product_name
HAVING 
    SUM(s.quantity_sold) > 5;


-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.
SELECT DISTINCT 
    c.customer_id
FROM 
    Customers c
JOIN 
    Sales s ON c.customer_id = s.customer_id
JOIN 
    Products p ON s.product_id = p.product_id
WHERE 
    p.category IN ('Electronics', 'Appliances');

-- 22. Write a query to calculate the total sales amount per product and group the result by product name.
SELECT 
    p.product_name, 
    SUM(s.quantity_sold * p.price) AS total_sales_amount
FROM 
    Sales s
JOIN 
    Products p ON s.product_id = p.product_id
GROUP BY 
    p.product_name;


-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.
SELECT DISTINCT 
    c.customer_id
FROM 
    Customers c
JOIN 
    Sales s ON c.customer_id = s.customer_id
WHERE 
    EXTRACT(YEAR FROM s.sale_date) = 2023;


-- 24. Write a query to find the customers with the highest total sales in 2023.
SELECT 
    c.customer_id, 
    SUM(s.quantity_sold * p.price) AS total_sales_amount
FROM 
    Customers c
JOIN 
    Sales s ON c.customer_id = s.customer_id
JOIN 
    Products p ON s.product_id = p.product_id
WHERE 
    EXTRACT(YEAR FROM s.sale_date) = 2023
GROUP BY 
    c.customer_id
ORDER BY 
    total_sales_amount DESC
LIMIT 1;


-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.
SELECT p.product_name, p.price
FROM assignment.products p
JOIN assignment.sales s ON p.product_id = s.product_id
ORDER BY p.price DESC
LIMIT 1;


-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.
SELECT COUNT(DISTINCT c.customer_id) AS total_customers
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
WHERE s.total_amount > 500;

-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.
SELECT COUNT(s.sale_id) AS total_sales
FROM assignment.sales s
JOIN assignment.customers c ON s.customer_id = c.customer_id
WHERE c.membership_status = 'Gold';


-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).
SELECT p.product_id, p.product_name, i.stock_quantity
FROM assignment.products p
JOIN assignment.inventory i ON p.product_id = i.product_id
WHERE i.stock_quantity < 10;


-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.quantity_sold) AS total_quantity
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(s.quantity_sold) > 5;


-- 30. Write a query to find the average quantity sold per product.
SELECT p.product_name, AVG(s.quantity_sold) AS avg_quantity_sold
FROM assignment.products p
JOIN assignment.sales s ON p.product_id = s.product_id
GROUP BY p.product_name;


-- 31. Write a query to find the number of sales made in the month of December 2023.
SELECT COUNT(*) AS total_sales
FROM assignment.sales
WHERE EXTRACT(YEAR FROM sale_date) = 2023
  AND EXTRACT(MONTH FROM sale_date) = 12;


-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC;


-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.
SELECT p.product_id, p.product_name, i.stock_quantity
FROM assignment.products p
JOIN assignment.sales s ON p.product_id = s.product_id
JOIN assignment.inventory i ON p.product_id = i.product_id
WHERE i.stock_quantity < 5;


-- 34. Write a query to find the total sales for each product and order the result by the highest sales.
SELECT p.product_name, SUM(s.total_amount) AS total_sales
FROM assignment.products p
JOIN assignment.sales s ON p.product_id = s.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC;


-- 35. Write a query to find all customers who bought products within 7 days of their registration date.
SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
WHERE s.sale_date <= c.registration_date + INTERVAL '7 days';


-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.
SELECT p.product_name, s.sale_id, s.quantity_sold, s.total_amount
FROM assignment.sales s
JOIN assignment.products p ON s.product_id = p.product_id
WHERE p.price BETWEEN 100 AND 500;


-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.
SELECT c.customer_id, c.first_name, c.last_name, COUNT(s.sale_id) AS purchase_count
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY purchase_count DESC
LIMIT 1;


-- 38. Write a query to find the total quantity of products sold per customer.
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.quantity_sold) AS total_quantity
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;


-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.
(
    SELECT product_name, stock_quantity
    FROM assignment.products
    ORDER BY stock_quantity DESC
    LIMIT 1
)
UNION
(
    SELECT product_name, stock_quantity
    FROM assignment.products
    ORDER BY stock_quantity ASC
    LIMIT 1
);


-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
SELECT p.product_name, SUM(s.total_amount) AS total_sales
FROM assignment.products p
JOIN assignment.sales s ON p.product_id = s.product_id
WHERE p.product_name ILIKE '%Phone%'
GROUP BY p.product_name;


-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    p.product_name,
    SUM(s.total_amount) AS total_sales_amount
FROM 
    assignment.customers c
INNER JOIN 
    assignment.sales s ON c.customer_id = s.customer_id
INNER JOIN 
    assignment.products p ON s.product_id = p.product_id
WHERE 
    c.membership_status = 'Gold'
GROUP BY 
    c.customer_id, c.first_name, c.last_name, p.product_name;


-- 42. Write a query to find the total sales of products by category.
SELECT 
    p.category,
    SUM(s.total_amount) AS total_sales
FROM 
    assignment.products p
JOIN 
    assignment.sales s ON p.product_id = s.product_id
GROUP BY 
    p.category;


-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.
SELECT 
    p.product_name,
    EXTRACT(YEAR FROM s.sale_date) AS sale_year,
    EXTRACT(MONTH FROM s.sale_date) AS sale_month,
    SUM(s.total_amount) AS total_sales
FROM 
    assignment.products p
JOIN 
    assignment.sales s ON p.product_id = p.product_id
GROUP BY 
    p.product_name, sale_year, sale_month
ORDER BY 
    sale_year, sale_month, total_sales DESC;


-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.
SELECT 
    p.product_name,
    i.stock_quantity
FROM 
    assignment.sales s
JOIN 
    assignment.inventory i ON s.product_id = i.product_id
JOIN 
    assignment.products p ON s.product_id = p.product_id
WHERE 
    i.stock_quantity > 0;


-- 45. Write a query to find the top 5 customers who have made the highest purchases.
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(s.total_amount) AS total_spent
FROM 
    assignment.customers c
JOIN 
    assignment.sales s ON c.customer_id = s.customer_id
GROUP BY 
    c.customer_id, c.first_name, c.last_name
ORDER BY 
    total_spent DESC
LIMIT 5;


-- 46. Write a query to calculate the total number of unique products sold in 2023.
SELECT COUNT(DISTINCT s.product_id) AS unique_products_sold
FROM assignment.sales s
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023;


-- 47. Write a query to find the products that have not been sold in the last 6 months.
SELECT p.product_id, p.product_name
FROM assignment.products p
WHERE p.product_id NOT IN (
    SELECT DISTINCT s.product_id
    FROM assignment.sales s
    WHERE s.sale_date >= CURRENT_DATE - INTERVAL '6 months'
);


-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.
SELECT 
    p.product_name,
    SUM(s.quantity_sold) AS total_quantity_sold
FROM 
    assignment.products p
JOIN 
    assignment.sales s ON p.product_id = s.product_id
WHERE 
    p.price BETWEEN 200 AND 800
GROUP BY 
    p.product_name;


-- 49. Write a query to find the customers who spent the most money in the year 2023.
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(s.total_amount) AS total_spent
FROM 
    assignment.customers c
JOIN 
    assignment.sales s ON c.customer_id = s.customer_id
WHERE 
    EXTRACT(YEAR FROM s.sale_date) = 2023
GROUP BY 
    c.customer_id, c.first_name, c.last_name
ORDER BY 
    total_spent DESC
LIMIT 1;


-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.
SELECT 
    p.product_name,
    SUM(s.quantity_sold) AS total_quantity_sold,
    p.price
FROM 
    assignment.products p
JOIN 
    assignment.sales s ON p.product_id = s.product_id
GROUP BY 
    p.product_name, p.price
HAVING 
    SUM(s.quantity_sold) > 100
    AND p.price > 200;


-- SUBQUERY QUESTIONS

-- 51. Which customers have spent more than the average spending of all customers?
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(s.total_amount) > (
    SELECT AVG(total_spent)
    FROM (
        SELECT SUM(s.total_amount) AS total_spent
        FROM assignment.sales s
        GROUP BY s.customer_id
    ) sub
);


-- 52. Which products are priced higher than the average price of all products?
SELECT product_id, product_name, price
FROM assignment.products
WHERE price > (SELECT AVG(price) FROM assignment.products);


-- 53. Which customers have never made a purchase?
SELECT c.customer_id, c.first_name, c.last_name
FROM assignment.customers c
WHERE c.customer_id NOT IN (SELECT DISTINCT customer_id FROM assignment.sales);


-- 54. Which products have never been sold?
SELECT p.product_id, p.product_name
FROM assignment.products p
WHERE p.product_id NOT IN (SELECT DISTINCT product_id FROM assignment.sales);


-- 55. Which customer made the single most expensive purchase (total amount)?
SELECT c.customer_id, c.first_name, c.last_name, s.total_amount
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
ORDER BY s.total_amount DESC
LIMIT 1;


-- 56. Which products have total sales greater than the average total sales across all products?
SELECT p.product_id, p.product_name, SUM(s.total_amount) AS total_sales
FROM assignment.products p
JOIN assignment.sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(s.total_amount) > (
    SELECT AVG(total_sales)
    FROM (
        SELECT SUM(s.total_amount) AS total_sales
        FROM assignment.sales
        GROUP BY product_id
    ) sub
);


-- 57. Which customers registered earlier than the average registration date?
-- Average of a date column can be calculated using; SELECT TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM registration_date)))::DATE FROM assignment.customers
SELECT customer_id, first_name, last_name, registration_date
FROM assignment.customers
WHERE registration_date < (
    SELECT TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM registration_date)))::DATE
    FROM assignment.customers
);


-- 58. Which products have a price higher than the average price within their own category?
SELECT p.product_id, p.product_name, p.category, p.price
FROM assignment.products p
WHERE p.price > (
    SELECT AVG(p2.price)
    FROM assignment.products p2
    WHERE p2.category = p.category
);


-- 59. Which customers have spent more than the customer with ID = 10?
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(s.total_amount) > (
    SELECT SUM(total_amount)
    FROM assignment.sales
    WHERE customer_id = 10
);


-- 60. Which products have total quantity sold greater than the overall average quantity sold?
SELECT p.product_id, p.product_name, SUM(s.quantity_sold) AS total_quantity_sold
FROM assignment.products p
JOIN assignment.sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(s.quantity_sold) > (
    SELECT AVG(total_quantity)
    FROM (
        SELECT SUM(s.quantity_sold) AS total_quantity
        FROM assignment.sales s
        GROUP BY s.product_id
    ) sub
);


-- COMMON TABLE EXPRESSIONS (CTEs)

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.
WITH customer_spending AS (
    SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
    FROM assignment.customers c
    JOIN assignment.sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT customer_id, first_name, last_name, total_spent
FROM customer_spending
ORDER BY total_spent DESC
LIMIT 5;


-- 62. Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.
WITH product_sales AS (
    SELECT p.product_id, p.product_name, SUM(s.quantity_sold) AS total_quantity_sold
    FROM assignment.products p
    JOIN assignment.sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT product_id, product_name, total_quantity_sold
FROM product_sales
ORDER BY total_quantity_sold DESC
LIMIT 3;

-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.
WITH category_sales AS (
    SELECT p.category, SUM(s.total_amount) AS total_revenue
    FROM assignment.products p
    JOIN assignment.sales s ON p.product_id = s.product_id
    GROUP BY p.category
)
SELECT category, total_revenue
FROM category_sales
ORDER BY total_revenue DESC
LIMIT 1;

-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.
WITH customer_purchases AS (
    SELECT c.customer_id, c.first_name, c.last_name, COUNT(s.sale_id) AS purchase_count
    FROM assignment.customers c
    JOIN assignment.sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT *
FROM customer_purchases
WHERE purchase_count > 2;


-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.
WITH product_quantities AS (
    SELECT p.product_id, p.product_name, SUM(s.quantity_sold) AS total_quantity
    FROM assignment.products p
    JOIN assignment.sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT *
FROM product_quantities
WHERE total_quantity > (SELECT AVG(total_quantity) FROM product_quantities);


-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.
WITH customer_spending AS (
    SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
    FROM assignment.customers c
    JOIN assignment.sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT *
FROM customer_spending
WHERE total_spent > (SELECT AVG(total_spent) FROM customer_spending);


-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.

WITH product_revenue AS (
    SELECT p.product_id, p.product_name, SUM(s.total_amount) AS total_revenue
    FROM assignment.products p
    JOIN assignment.sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT *
FROM product_revenue
ORDER BY total_revenue DESC;


-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.

WITH monthly_sales AS (
    SELECT EXTRACT(YEAR FROM s.sale_date) AS sale_year,
           EXTRACT(MONTH FROM s.sale_date) AS sale_month,
           SUM(s.total_amount) AS total_revenue
    FROM assignment.sales s
    GROUP BY sale_year, sale_month
)
SELECT *
FROM monthly_sales
ORDER BY total_revenue DESC
LIMIT 1;



-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.

WITH product_customers AS (
    SELECT p.product_id, p.product_name, COUNT(DISTINCT s.customer_id) AS customer_count
    FROM assignment.products p
    JOIN assignment.sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT *
FROM product_customers
WHERE customer_count > 3;


-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold.

WITH product_quantities AS (
    SELECT p.product_id, p.product_name, SUM(s.quantity_sold) AS total_quantity
    FROM assignment.products p
    JOIN assignment.sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT *
FROM product_quantities
WHERE total_quantity < (SELECT AVG(total_quantity) FROM product_quantities);


-- WINDOW FUNCTION QUESTIONS

-- 71. Rank customers based on the total amount they have spent.

SELECT c.customer_id, c.first_name, c.last_name,
       SUM(s.total_amount) AS total_spent,
       RANK() OVER (ORDER BY SUM(s.total_amount) DESC) AS spending_rank
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;


-- 72. Rank products based on total quantity sold.

SELECT p.product_id, p.product_name,
       SUM(s.quantity_sold) AS total_quantity_sold,
       RANK() OVER (ORDER BY SUM(s.quantity_sold) DESC) AS quantity_rank
FROM assignment.products p
JOIN assignment.sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name;



-- 73. Identify the 3rd highest spending customer.

SELECT customer_id, first_name, last_name, total_spent
FROM (
    SELECT c.customer_id, c.first_name, c.last_name,
           SUM(s.total_amount) AS total_spent,
           RANK() OVER (ORDER BY SUM(s.total_amount) DESC) AS spending_rank
    FROM assignment.customers c
    JOIN assignment.sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
) ranked
WHERE spending_rank = 3;

-- 74. Identify the 2nd most expensive product.

SELECT product_id, product_name, price
FROM (
    SELECT p.product_id, p.product_name, p.price,
           RANK() OVER (ORDER BY p.price DESC) AS price_rank
    FROM assignment.products p
) ranked
WHERE price_rank = 2;


-- 75. Show the ranking of products within each category based on price.

SELECT category, product_id, product_name, price,
       RANK() OVER (PARTITION BY category ORDER BY price DESC) AS category_price_rank
FROM assignment.products;


-- 76. Show the ranking of customers based on the number of purchases they made.

SELECT c.customer_id, c.first_name, c.last_name,
       COUNT(s.sale_id) AS purchase_count,
       RANK() OVER (ORDER BY COUNT(s.sale_id) DESC) AS purchase_rank
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;


-- 77. Show the running total of sales amounts ordered by sale_date.

SELECT sale_id, sale_date, total_amount,
       SUM(total_amount) OVER (ORDER BY sale_date) AS running_total
FROM assignment.sales
ORDER BY sale_date;



-- 78. Show the previous sale amount for each sale ordered by sale_date.

SELECT sale_id, sale_date, total_amount,
       LAG(total_amount) OVER (ORDER BY sale_date) AS previous_sale_amount
FROM assignment.sales
ORDER BY sale_date;


-- 79. Show the next sale amount for each sale ordered by sale_date.
SELECT sale_id, sale_date, total_amount,
       LEAD(total_amount) OVER (ORDER BY sale_date) AS next_sale_amount
FROM assignment.sales
ORDER BY sale_date;


-- 80. Divide customers into 4 groups based on total spending.

SELECT customer_id, first_name, last_name, total_spent,
       NTILE(4) OVER (ORDER BY total_spent DESC) AS spending_quartile
FROM (
    SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
    FROM assignment.customers c
    JOIN assignment.sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
) sub;



-- =====================================================
-- ADVANCED ANALYTICAL QUESTIONS
-- =====================================================

-
-- 81. Which customers bought products in more than one category?

SELECT c.customer_id, c.first_name, c.last_name
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
JOIN assignment.products p ON s.product_id = p.product_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(DISTINCT p.category) > 1;


-- 82. Which customers purchased products within 7 days of registering?

SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
WHERE s.sale_date <= c.registration_date + INTERVAL '7 days';


-- 83. Which products have lower stock remaining than the average stock quantity?

SELECT product_id, product_name, stock_quantity
FROM assignment.products
WHERE stock_quantity < (SELECT AVG(stock_quantity) FROM assignment.products);


-- 84. Which customers purchased the same product more than once?

SELECT c.customer_id, c.first_name, c.last_name, s.product_id, COUNT(*) AS purchase_count
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, s.product_id
HAVING COUNT(*) > 1;


-- 85. Which product categories generated the highest total revenue?

SELECT p.category, SUM(s.total_amount) AS total_revenue
FROM assignment.products p
JOIN assignment.sales s ON p.product_id = s.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;


-- 86. Which products are among the top 3 most sold products?

SELECT p.product_id , product_name, SUM(s.quantity_sold) AS total_quantity_sold
FROM assignment.products p
JOIN assignment.sales s ON p.product_id = s.product_id
GROUP BY p.product_id  , product_name
ORDER BY total_quantity_sold DESC
LIMIT 3;


-- 87. Which customers purchased the most expensive product?

SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
JOIN assignment.products p ON s.product_id = p.product_id
WHERE p.price = (SELECT MAX(price) FROM assignment.products);


-- 88. Which products were purchased by the highest number of unique customers?
SELECT p.product_id, p.product_name, COUNT(DISTINCT s.customer_id) AS unique_customers
FROM assignment.products p
JOIN assignment.sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
ORDER BY unique_customers DESC
LIMIT 1;


-- 89. Which customers made purchases above the average sale amount?

SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
WHERE s.total_amount > (SELECT AVG(total_amount) FROM assignment.sales);


-- 90. Which customers purchased more products than the average quantity purchased per customer?
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.quantity_sold) AS total_quantity
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(s.quantity_sold) > (
    SELECT AVG(total_quantity) 
    FROM (
        SELECT SUM(s.quantity_sold) AS total_quantity
        FROM assignment.sales s
        GROUP BY s.customer_id
    ) sub
);

-- 	ADVANCED WINDOW + ANALYTICAL PROBLEMS

-- 91. Which customers rank in the top 10% of spending?
WITH customer_spending AS (
    SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
    FROM assignment.customers c
    JOIN assignment.sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT customer_id, first_name, last_name, total_spent
FROM (
    SELECT *, NTILE(10) OVER (ORDER BY total_spent DESC) AS decile
    FROM customer_spending
) ranked
WHERE decile = 1;


-- 92. Which products contribute to the top 50% of total revenue?
WITH product_revenue AS (
    SELECT p.product_id, p.product_name, SUM(s.total_amount) AS total_revenue
    FROM assignment.products p
    JOIN assignment.sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT product_id, product_name, total_revenue
FROM (
    SELECT *, SUM(total_revenue) OVER () AS grand_total,
              SUM(total_revenue) OVER (ORDER BY total_revenue DESC) AS running_total
    FROM product_revenue
) ranked
WHERE running_total <= grand_total * 0.5;


-- 93. Which customers made purchases in consecutive months?

SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
JOIN (
    SELECT customer_id, sale_date,
           LAG(EXTRACT(MONTH FROM sale_date)) OVER (PARTITION BY customer_id ORDER BY sale_date) AS prev_month,
           EXTRACT(MONTH FROM sale_date) AS current_month
    FROM assignment.sales
) sub ON c.customer_id = sub.customer_id
WHERE prev_month IS NOT NULL AND current_month = prev_month + 1;


-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?

SELECT p.product_id, p.product_name,
       p.stock_quantity - COALESCE(SUM(s.quantity_sold),0) AS difference
FROM assignment.products p
LEFT JOIN assignment.sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name, p.stock_quantity
ORDER BY difference DESC
LIMIT 1;


-- 95. Which customers have spending above the average spending of their membership tier?

WITH tier_spending AS (
    SELECT c.customer_id, c.first_name, c.last_name, c.membership_status,
           SUM(s.total_amount) AS total_spent
    FROM assignment.customers c
    JOIN assignment.sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name, c.membership_status
)
SELECT customer_id, first_name, last_name, membership_status, total_spent
FROM tier_spending t
WHERE total_spent > (
    SELECT AVG(total_spent)
    FROM tier_spending
    WHERE membership_status = t.membership_status
);

-- 96. Which products have higher sales than the average sales within their category?
WITH product_sales AS (
    SELECT p.product_id, p.product_name, p.category, SUM(s.total_amount) AS total_sales
    FROM assignment.products p
    JOIN assignment.sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name, p.category
)
SELECT *
FROM product_sales ps
WHERE total_sales > (
    SELECT AVG(total_sales)
    FROM product_sales
    WHERE category = ps.category
);


-- 97. Which customer made the largest single purchase relative to their total spending?
WITH customer_totals AS (
    SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
    FROM assignment.customers c
    JOIN assignment.sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
),
largest_purchase AS (
    SELECT customer_id, MAX(total_amount) AS max_purchase
    FROM assignment.sales
    GROUP BY customer_id
)
SELECT ct.customer_id, ct.first_name, ct.last_name, lp.max_purchase, ct.total_spent,
       (lp.max_purchase::decimal / ct.total_spent) AS relative_share
FROM customer_totals ct
JOIN largest_purchase lp ON ct.customer_id = lp.customer_id
ORDER BY relative_share DESC
LIMIT 1;


-- 98. Which products rank among the top 3 most sold products within each category?
SELECT category, product_id, product_name, total_quantity_sold, category_rank
FROM (
    SELECT p.category, p.product_id, p.product_name,
           SUM(s.quantity_sold) AS total_quantity_sold,
           RANK() OVER (PARTITION BY p.category ORDER BY SUM(s.quantity_sold) DESC) AS category_rank
    FROM assignment.products p
    JOIN assignment.sales s ON p.product_id = s.product_id
    GROUP BY p.category, p.product_id, p.product_name
) ranked
WHERE category_rank <= 3;

-- 99. Which customers are tied for the highest total spending?
WITH customer_spending AS (
    SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
    FROM assignment.customers c
    JOIN assignment.sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT customer_id, first_name, last_name, total_spent
FROM customer_spending
WHERE total_spent = (SELECT MAX(total_spent) FROM customer_spending);


-- 100. Which products generated sales every year present in the dataset?
WITH product_years AS (
    SELECT p.product_id, p.product_name, EXTRACT(YEAR FROM s.sale_date) AS sale_year
    FROM assignment.products p
    JOIN assignment.sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name, sale_year
),
all_years AS (
    SELECT DISTINCT EXTRACT(YEAR FROM sale_date) AS sale_year
    FROM assignment.sales
)
SELECT py.product_id, py.product_name
FROM product_years py
GROUP BY py.product_id, py.product_name
HAVING COUNT(DISTINCT py.sale_year) = (SELECT COUNT(*) FROM all_years);

-- ******
-- 101. Update the products table to assign a price_category
--      as Expensive (>1000), Moderate (500–1000), or Affordable (<500).
UPDATE assignment.products
SET price_category = CASE
    WHEN price > 1000 THEN 'Expensive'
    WHEN price BETWEEN 500 AND 1000 THEN 'Moderate'
    ELSE 'Affordable'
END;

-- *****
-- 102. Update the customers table to assign a customer_level
--      as VIP (>20000), Regular (10000–20000), or New (<10000).
UPDATE assignment.customers
SET customer_level = CASE
    WHEN (SELECT SUM(total_amount) FROM assignment.sales WHERE customer_id = customers.customer_id) > 20000 THEN 'VIP'
    WHEN (SELECT SUM(total_amount) FROM assignment.sales WHERE customer_id = customers.customer_id) BETWEEN 10000 AND 20000 THEN 'Regular'
    ELSE 'New'
END;

-- *****
-- 103. Update the products table to assign a stock_status
--      as Low Stock (<10) or Sufficient Stock (>=10).
UPDATE assignment.products
SET stock_status = CASE
    WHEN stock_quantity < 10 THEN 'Low Stock'
    ELSE 'Sufficient Stock'
END;

-- Answer: Updates products with a stock_status label.



-- 104. Display each customer’s registration year.
SELECT customer_id, first_name, last_name,
       EXTRACT(YEAR FROM registration_date) AS registration_year
FROM assignment.customers;


-- 105. Count how many customers registered in each year.
SELECT EXTRACT(YEAR FROM registration_date) AS registration_year,
       COUNT(*) AS total_customers
FROM assignment.customers
GROUP BY registration_year
ORDER BY registration_year;


-- 106. Find the total sales amount for each month.
SELECT EXTRACT(YEAR FROM sale_date) AS sale_year,
       EXTRACT(MONTH FROM sale_date) AS sale_month,
       SUM(total_amount) AS monthly_sales
FROM assignment.sales
GROUP BY sale_year, sale_month
ORDER BY sale_year, sale_month;


-- 107. Show all sales made in the year 2023.
SELECT *
FROM assignment.sales
WHERE EXTRACT(YEAR FROM sale_date) = 2023;


-- 108. Find the total sales amount for each year.
SELECT EXTRACT(YEAR FROM sale_date) AS sale_year,
       SUM(total_amount) AS yearly_sales
FROM assignment.sales
GROUP BY sale_year
ORDER BY sale_year;


-- 109. Calculate the number of days each customer has been registered.
SELECT customer_id, first_name, last_name,
       CURRENT_DATE - registration_date AS days_registered
FROM assignment.customers;


-- 110. Display each sale and extract the year and month from the sale date.
SELECT sale_id, customer_id, product_id, total_amount,
       EXTRACT(YEAR FROM sale_date) AS sale_year,
       EXTRACT(MONTH FROM sale_date) AS sale_month
FROM assignment.sales;


-- 111. Display each customer’s email and replace null values with 'No Email Provided'.
SELECT customer_id, first_name, last_name,
       COALESCE(email, 'No Email Provided') AS email
FROM assignment.customers;


-- 112. Find customers who do not have an email address.
SELECT customer_id, first_name, last_name
FROM assignment.customers
WHERE email IS NULL;


-- 113. Find products that have never been sold using a subquery.
SELECT product_id, product_name
FROM assignment.products
WHERE product_id NOT IN (SELECT DISTINCT product_id FROM assignment.sales);


-- 114. Find customers who have not made any purchases using a subquery.
SELECT customer_id, first_name, last_name
FROM assignment.customers
WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM assignment.sales);

-- *******
-- 115. Update the products table to assign a price_category
--      (Premium >1000, Standard 500–1000, Budget <500).
UPDATE assignment.products
SET price_category = CASE
    WHEN price > 1000 THEN 'Premium'
    WHEN price BETWEEN 500 AND 1000 THEN 'Standard'
    ELSE 'Budget'
END;


-- 116. Create a PostgreSQL function that takes a minimum revenue
--      and returns products whose total sales exceed that value.
CREATE OR REPLACE FUNCTION products_above_revenue(min_revenue DECIMAL)
RETURNS TABLE(product_id INT, product_name VARCHAR, total_sales DECIMAL) AS $$
BEGIN
    RETURN QUERY
    SELECT p.product_id, p.product_name, SUM(s.total_amount) AS total_sales
    FROM assignment.products p
    JOIN assignment.sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
    HAVING SUM(s.total_amount) > min_revenue;
END;
$$ LANGUAGE plpgsql;


-- 117. Create a PostgreSQL function that takes a customer_id
--      and returns the total amount spent by that customer.
CREATE OR REPLACE FUNCTION customer_total_spent(cust_id INT)
RETURNS DECIMAL AS $$
DECLARE total_spent DECIMAL;
BEGIN
    SELECT SUM(total_amount) INTO total_spent
    FROM assignment.sales
    WHERE customer_id = cust_id;
    RETURN COALESCE(total_spent, 0);
END;
$$ LANGUAGE plpgsql;


-- 118. Create a PostgreSQL function that takes a start_date and end_date
--      and returns the number of orders made within that range.
CREATE OR REPLACE FUNCTION orders_in_range(start_date DATE, end_date DATE)
RETURNS INT AS $$
DECLARE order_count INT;
BEGIN
    SELECT COUNT(*) INTO order_count
    FROM assignment.sales
    WHERE sale_date BETWEEN start_date AND end_date;
    RETURN order_count;
END;
$$ LANGUAGE plpgsql;

-- 119. Create a PostgreSQL stored procedure that inserts a new record into the sales table.
CREATE OR REPLACE PROCEDURE insert_sale(
    sale_id INT, customer_id INT, product_id INT,
    quantity_sold INT, sale_date DATE, total_amount DECIMAL
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO assignment.sales (sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount)
    VALUES (sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount);
END;
$$;

-- 120. Create an index on the product_id column in the sales table to improve join performance.
CREATE INDEX idx_sales_product_id ON assignment.sales(product_id);

-- 121. Create an index on the registration_date column in the customers table
--      to improve filtering by date.
CREATE INDEX idx_customers_registration_date ON assignment.customers(registration_date);

-- 122. Write a transaction that inserts a new sale and updates product stock,
--      ensuring both succeed or fail together.
BEGIN;

INSERT INTO assignment.sales (sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount)
VALUES (200, 5, 2, 1, CURRENT_DATE, 799.99);

UPDATE assignment.products
SET stock_quantity = stock_quantity - 1
WHERE product_id = 2;

COMMIT;

-- 123. Write a transaction that updates a customer’s email
--      and rolls back if the email is invalid.
BEGIN;

UPDATE assignment.customers
SET email = 'newemail@example.com'
WHERE customer_id = 5;

-- Validation check: rollback if email does not contain '@'
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM assignment.customers WHERE email LIKE '%@%') THEN
        RAISE NOTICE 'Invalid email, rolling back';
        ROLLBACK;
    END IF;
END;
$$;

COMMIT;

-- 124. Create a view that shows total revenue per product.
CREATE OR REPLACE VIEW product_revenue_view AS
SELECT p.product_id, p.product_name, SUM(s.total_amount) AS total_revenue
FROM assignment.products p
JOIN assignment.sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name;


-- 125. Create a view that shows each customer and their total spending.
CREATE OR REPLACE VIEW customer_spending_view AS
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;


-- 126. Use UNION to combine customer first names and product names into one column.
SELECT first_name AS name
FROM assignment.customers
UNION
SELECT product_name AS name
FROM assignment.products;


-- 127. Use INTERSECT to find values that appear in both customer IDs
--      and customer IDs who made purchases.
SELECT customer_id
FROM assignment.customers
INTERSECT
SELECT customer_id
FROM assignment.sales;


-- 128. Perform an anti-join to find products that have never been sold using LEFT JOIN.
SELECT p.product_id, p.product_name
FROM assignment.products p
LEFT JOIN assignment.sales s ON p.product_id = s.product_id
WHERE s.product_id IS NULL;


-- 129. Use NOT EXISTS to find customers who have not made any purchases.
SELECT c.customer_id, c.first_name, c.last_name
FROM assignment.customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM assignment.sales s
    WHERE s.customer_id = c.customer_id
);

-- 130. Cast the price column to an integer and display it alongside the original price.
SELECT product_id, product_name, price, CAST(price AS INT) AS price_integer
FROM assignment.products;

-- 131. Convert registration_date to text format and display it in 'YYYY-MM' format.
SELECT customer_id, first_name, last_name,
       TO_CHAR(registration_date, 'YYYY-MM') AS registration_month
FROM assignment.customers;

-- 132. The following query returns an error due to improper GROUP BY usage.
--      Identify and fix the issue.
--      Original: SELECT product_id, product_name, SUM(total_amount) FROM sales GROUP BY product_id;
SELECT p.product_id, p.product_name, SUM(s.total_amount) AS total_sales
FROM assignment.sales s
JOIN assignment.products p ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name;

-- 133. The following query incorrectly filters aggregated results using WHERE.
--      Identify and correct it.
--      Original: SELECT product_id, SUM(total_amount) FROM sales WHERE SUM(total_amount) > 1000 GROUP BY product_id;
SELECT product_id, SUM(total_amount) AS total_sales
FROM assignment.sales
GROUP BY product_id
HAVING SUM(total_amount) > 1000;


-- 134. The following query returns incorrect results because it uses the wrong join condition.
--      Identify and fix it.
--      Original: SELECT * FROM assignment.sales s JOIN assignment.products p ON s.customer_id = p.product_id;
SELECT *
FROM assignment.sales s
JOIN assignment.products p ON s.product_id = p.product_id;
-- Fixed join condition to match product_id instead of customer_id.

-- 135. Replace NULL email values with 'No Email Provided' using COALESCE.
SELECT customer_id, first_name, last_name,
       COALESCE(email, 'No Email Provided') AS email
FROM assignment.customers;

-- 136. Trim any leading or trailing spaces from customer first names.
SELECT customer_id, TRIM(first_name) AS cleaned_first_name, last_name
FROM assignment.customers;

-- 137. Convert all customer emails to lowercase.
SELECT customer_id, LOWER(email) AS normalized_email
FROM assignment.customers;

-- 138. Replace empty strings in phone numbers with NULL.
UPDATE assignment.customers
SET phone_number = NULL
WHERE phone_number = '';

-- 139. Extract the year from registration_date and handle NULL dates gracefully.
SELECT customer_id, first_name, last_name,
       COALESCE(EXTRACT(YEAR FROM registration_date), 0) AS registration_year
FROM assignment.customers;




