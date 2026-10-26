
CREATE VIEW vw_single_vs_repeat_customers AS 
SELECT 
    cd.customer_id as customer,
    COUNT(DISTINCT od.order_id) as buy_times
FROM customers_dataset cd
JOIN orders_dataset od ON cd.customer_id=od.customer_id
GROUP BY cd.customer_id
ORDER BY COUNT(DISTINCT od.order_id) DESC


