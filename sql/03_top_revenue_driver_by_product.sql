
CREATE VIEW vw_top_product_revenue_driver AS
SELECT 
    INITCAP(REPLACE(pc.product_category_name_english,'_',' & ')) as english_category,
    SUM(oi.price) as order_value
FROM products_dataset pd
JOIN product_category_name_translation pc ON pd.product_category_name = pc.product_category_name
JOIN order_items_dataset oi ON pd.product_id = oi.product_id
GROUP BY pc.product_category_name_english
ORDER BY SUM(oi.price) DESC
LIMIT 10


