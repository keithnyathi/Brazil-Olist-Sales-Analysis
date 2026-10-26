
CREATE VIEW transaction_value_by_region AS 
SELECT 
    cd.customer_city as city,
    SUM(op.payment_value) as value
FROM customers_dataset cd
LEFT JOIN orders_dataset od ON cd.customer_id = od.customer_id
LEFT JOIN order_payments_dataset op ON od.order_id = op.order_id
GROUP BY cd.customer_city
ORDER BY SUM(op.payment_value) DESC
LIMIT 10

