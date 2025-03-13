--(kpI) FINDING 

--USE db_pizza;
--GO
SELECT * FROM p_sales;
-- what is total revenue 
SELECT CONCAT('$',CAST(ROUND(SUM(total_price), 2) AS DECIMAL(10,2))) AS Total_Revenue  from p_sales
--
SELECT CONCAT('$',CAST(ROUND(SUM(total_price) / COUNT(DISTINCT order_id), 2) AS DECIMAL(10,2))) AS Avg_Spend_Per_Order
FROM p_sales;
--
SELECT(SUM(quantity)) as Total_Pizza_sold from p_sales
--
select count(distinct(order_id)) as Totl_order from p_sales
--
SELECT CAST(SUM(quantity) AS DECIMAL(10,2)) / CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS Avg_Pizza_Per_Order
FROM p_sales;

