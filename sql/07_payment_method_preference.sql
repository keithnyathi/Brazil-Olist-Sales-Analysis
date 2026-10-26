

CREATE VIEW payment_method_preference AS
SELECT 
    payment_type,
    ROUND(AVG(payment_installments),4) as avg_payment_installments,
    SUM(payment_value) as total_payment_value
FROM order_payments_dataset
GROUP BY payment_type
ORDER BY SUM(payment_value) DESC