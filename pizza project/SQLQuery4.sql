-- Deep exploration
--select * from p_sales
select DATENAME(MONTH, order_date) AS Month_Name,count(distinct(order_id)) as total_orders from p_sales
group by DATENAME(MONTH, order_date) , MONTH(order_date) 
order by count(distinct(order_id)) desc
--
select TOP 4 DATENAME(WEEKDAY, order_date) AS DAY_NAME ,count(distinct(order_id)) as total_orders from p_sales
group by DATENAME(WEEKDAY, order_date) ,  DATEPART(WEEKDAY, order_date)
order by count(distinct(order_id)) desc
--
SELECT top 5
    DATEPART(HOUR, order_time) AS Order_Hour,  
    COUNT(DISTINCT order_id) AS Total_Orders
FROM p_sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY COUNT(DISTINCT order_id) DESC;
---
select pizza_category, ROUND(SUM(total_price),2) as Total_Sales,concat((sum(total_price)* 100 /(select sum(total_price) from p_sales)),'%') as Percentage
from p_sales
group by pizza_category
order by (sum(total_price)* 100 /(select sum(total_price) from p_sales)) desc
--NOTE:
--ADD A WHERE MONTH(ORDER_DAET) =1 TO SEE PARTICLUAR YEAR
---
SELECT pizza_size ,ROUND(SUM(total_price),2) as Total_Sales, concat(round(sum(total_price) *100 / (select sum(total_price) from p_sales ),2),'%')
as Percentage
from p_sales
group by pizza_size 
---
Select  top 5 pizza_name , ROUND(SUM(total_price),2) as Total_Sales,concat(round(sum(total_price) *100 / (select sum(total_price) from p_sales ),2),'%')
as Percentage from p_sales
group by pizza_name
order by concat(round(sum(total_price) *100 / (select sum(total_price) from p_sales ),2),'%') desc
--
Select  top 5 pizza_name ,ROUND(SUM(total_price),2) as Total_Sales, concat(round(sum(total_price) *100 / (select sum(total_price) from p_sales ),2),'%')
as Percentage from p_sales
group by pizza_name
order by concat(round(sum(total_price) *100 / (select sum(total_price) from p_sales ),2),'%') asc
---
SELECT 
    pizza_name, 
    ROUND(SUM(total_price), 2) AS Total_Sales,
    ROUND(SUM(quantity), 2) AS Total_Quantity,
    CONCAT(ROUND(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM p_sales), 2), '%') AS Revenue_Percentage
FROM p_sales
GROUP BY pizza_name
ORDER BY Total_Sales DESC;  

SELECT * INTO [db_pizza].[dbo].[pizza_sales]  
FROM [db_pizza].[dbo].[p_sales];

SELECT * from pizza_sales
order by pizza_id asc
