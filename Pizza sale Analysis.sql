Create database if not exists Pizza_DB;
Create schema if not exists Pizza_DB;
create table if not exists pizza_sales(
pizza_id INT PRIMARY KEY,
order_id INT,
pizza_name_id VARCHAR(50),
quantity int,
order_date date,
order_time time,
unit_price float,
total_price float,
pizza_size varchar(50),
pizza_category varchar(50),
pizza_ingredients varchar(200),
pizza_name varchar(50)
);


Select * from pizza_sales;

-- Total revenue

select sum(round(total_price, 2)) as Total_Revenue from pizza_sales;

-- average order value

select round(sum(total_price)/(count(distinct(order_id))), 2) as Average_Order_Value from pizza_sales;

-- Total Pizzas sold

Select sum(quantity) from pizza_sales;

-- Total orders

Select count(distinct(order_id)) as Total_Orders from pizza_sales;

-- Average Pizzas per order

Select Round(sum(quantity)/count(distinct(order_id)), 2) as Pizzas_per_Order from pizza_sales;

-- Daily trend for total orders

SELECT 
    DAYNAME(order_date) AS order_day, 
    COUNT(DISTINCT order_id) AS Total_Orders
FROM 
    pizza_sales
GROUP BY 
    DAYNAME(order_date);

-- Hourly trend for total orders

Select hour(order_time), count(distinct(order_id)) as Total_orders from pizza_sales
group by hour(order_time)
order by hour(order_time) asc;

-- Percentage of sales by pizza category, Total sales by Pizza category

Select pizza_category, round(sum(total_price),2) as Total_sales, round(sum(total_price)*100/(select sum(total_price) from pizza_sales), 2) as Percentage_Share
from pizza_sales
group by pizza_category;

-- Percentage of sales and Total sales by pizza category for January

Select pizza_category, round(sum(total_price),2) as Total_sales, round(sum(total_price)*100/(select sum(total_price) from pizza_sales where month(order_date) = 1), 2) as Percentage_Share
from pizza_sales
where month(order_date) = 1
group by pizza_category;

-- Percentage of sales and total sales by Pizza size in first quarter

Select pizza_size, round(sum(total_price),2) as Total_sales, round(sum(total_price)*100/(select sum(total_price) from pizza_sales), 2) as Percentage_Share
from pizza_sales
WHERE QUARTER(order_date) = 1
group by pizza_size
order by percentage_share desc;

-- Total pizza sold by pizza category

Select pizza_category, sum(Quantity) as Total_pizzas_sold
from pizza_sales
group by pizza_category;

-- Top 5 best sellers by total pizzas sold

Select pizza_name, sum(Quantity) as Pizzas_sold
from pizza_sales
group by pizza_name
order by pizzas_sold desc
limit 5;

-- Bottom 5 worst sellers by total pizzas sold

Select pizza_name, sum(Quantity) as Pizzas_sold
from pizza_sales
group by pizza_name
order by pizzas_sold asc
limit 5;

SELECT @@hostname, @@port, @@version;
SELECT USER();
ALTER USER 'root'@'localhost' IDENTIFIED BY 'Qw#12345';
FLUSH PRIVILEGES;

SELECT user, host FROM mysql.user WHERE user = 'root';
SHOW GRANTS FOR 'root'@'localhost';

ALTER USER 'root'@'localhost' IDENTIFIED BY 'Qw#12345';
RENAME USER 'root'@'localhost' TO 'root'@'%';
FLUSH PRIVILEGES;

CREATE USER 'your_new_user'@'%' IDENTIFIED BY 'your_password';
GRANT ALL PRIVILEGES ON your_database.* TO 'your_new_user'@'%';
FLUSH PRIVILEGES;