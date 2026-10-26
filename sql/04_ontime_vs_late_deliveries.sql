
CREATE VIEW ontime_vs_late_deliveries AS 
WITH base_table AS(
SELECT 
    cd.customer_state as delivery_state,
    AVG(AGE(od.order_estimated_delivery_date, od.order_delivered_customer_date)) as delivery_time,
    CASE WHEN EXTRACT(DAY FROM AVG(AGE(od.order_estimated_delivery_date, od.order_delivered_customer_date))) > 0 THEN 'Early'
    ELSE 'Late' END AS delivery_delay
FROM orders_dataset od
JOIN customers_dataset cd ON od.customer_id = cd.customer_id
WHERE od.order_delivered_customer_date IS NOT NULL
GROUP BY cd.customer_state
ORDER BY AVG(AGE(od.order_estimated_delivery_date, od.order_delivered_customer_date)) DESC

)

SELECT
    delivery_state,
    EXTRACT(DAY FROM delivery_time) as avg_early_late_delivery_days,
    delivery_delay
FROM base_table
