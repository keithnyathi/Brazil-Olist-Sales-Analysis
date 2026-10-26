
CREATE VIEW freight_cots_effects AS
SELECT 
    order_id,
    price,
    freight_value,
    ROUND((freight_value / price)* 100,2) as freight_per_product
FROM order_items_dataset
ORDER BY freight_per_product DESC
LIMIT 200

