
CREATE VIEW correlation_delay_vs_review AS
SELECT 
    CORR(
        ord.review_score, EXTRACT( DAY FROM (od.order_delivered_customer_date - od.order_estimated_delivery_date))
    ) as correlation_delay_vs_review
FROM orders_dataset od
JOIN order_reviews_dataset ord ON od.order_id=ord.order_id
WHERE od.order_status = 'delivered' 
AND od.order_estimated_delivery_date IS NOT NULL
AND od.order_estimated_delivery_date IS NOT NULL
