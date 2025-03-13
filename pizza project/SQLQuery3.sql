--select * from p_sales
SELECT 
    SUM(CASE WHEN pizza_id IS NULL THEN 1 ELSE 0 END) AS pizza_id_nulls,
    SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS order_id_nulls,
    SUM(CASE WHEN pizza_name_id IS NULL THEN 1 ELSE 0 END) AS pizza_name_id_nulls,
    SUM(CASE WHEN quantity IS NULL THEN 1 ELSE 0 END) AS quantity_nulls,
    SUM(CASE WHEN order_date IS NULL THEN 1 ELSE 0 END) AS order_date_nulls,
    SUM(CASE WHEN order_time IS NULL THEN 1 ELSE 0 END) AS order_time_nulls,
    SUM(CASE WHEN unit_price IS NULL THEN 1 ELSE 0 END) AS unit_price_nulls,
    SUM(CASE WHEN total_price IS NULL THEN 1 ELSE 0 END) AS total_price_nulls,
    SUM(CASE WHEN pizza_size IS NULL THEN 1 ELSE 0 END) AS pizza_size_nulls,
    SUM(CASE WHEN pizza_category IS NULL THEN 1 ELSE 0 END) AS pizza_category_nulls,
    SUM(CASE WHEN pizza_ingredients IS NULL THEN 1 ELSE 0 END) AS pizza_ingredients_nulls,
    SUM(CASE WHEN pizza_name IS NULL THEN 1 ELSE 0 END) AS pizza_name_nulls
FROM p_sales;
