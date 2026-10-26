COPY  customers_dataset
FROM 'D:\\DATA ANALYTICS\\00_1_Q3_PROJECTS\\SQL\\Customer Orders analysis\Analysis\\olist_customers_dataset.csv'
WITH (FORMAT csv, HEADER True, ENCODING 'UTF8');


COPY  geolocation_dataset
FROM 'D:\\DATA ANALYTICS\\00_1_Q3_PROJECTS\\SQL\\Customer Orders analysis\\Analysis\\olist_geolocation_dataset.csv'
WITH (FORMAT csv, HEADER True, ENCODING 'UTF8');

COPY  order_items_dataset
FROM 'D:\\DATA ANALYTICS\\00_1_Q3_PROJECTS\\SQL\\Customer Orders analysis\\Analysis\\olist_order_items_dataset.csv'
WITH (FORMAT csv, HEADER True, ENCODING 'UTF8');

COPY  order_payments_dataset
FROM 'D:\\DATA ANALYTICS\\00_1_Q3_PROJECTS\\SQL\\Customer Orders analysis\\Analysis\\olist_order_payments_dataset.csv'
WITH (FORMAT csv, HEADER True, ENCODING 'UTF8');

COPY  order_reviews_dataset
FROM 'D:\\DATA ANALYTICS\\00_1_Q3_PROJECTS\\SQL\\Customer Orders analysis\\Analysis\\olist_order_reviews_dataset.csv'
WITH (FORMAT csv, HEADER True, ENCODING 'UTF8');

COPY  orders_dataset
FROM 'D:\\DATA ANALYTICS\\00_1_Q3_PROJECTS\\SQL\Customer Orders analysis\\Analysis\\olist_orders_dataset.csv'
WITH (FORMAT csv, HEADER True, ENCODING 'UTF8');

COPY  products_dataset
FROM 'D:\\DATA ANALYTICS\\00_1_Q3_PROJECTS\\SQL\\Customer Orders analysis\\Analysis\\olist_products_dataset.csv'
WITH (FORMAT csv, HEADER True, ENCODING 'UTF8');

COPY  sellers_dataset
FROM 'D:\\DATA ANALYTICS\\00_1_Q3_PROJECTS\\SQL\\Customer Orders analysis\\Analysis\\olist_sellers_dataset.csv'
WITH (FORMAT csv, HEADER True, ENCODING 'UTF8');

COPY  product_category_name_translation
FROM 'D:\\DATA ANALYTICS\\00_1_Q3_PROJECTS\\SQL\\Customer Orders analysis\\Analysis\\product_category_name_translation.csv'
WITH (FORMAT csv, HEADER True, ENCODING 'UTF8');