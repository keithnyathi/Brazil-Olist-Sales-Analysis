CREATE TABLE  customers_dataset(
    customer_id TEXT,
    customer_unique_id TEXT,
    customer_zip_code_prefix INT,
    customer_city VARCHAR(100),
    customer_state VARCHAR(50)
);


CREATE TABLE geolocation_dataset(
    geolocation_zip_code_prefix INT, 
    geolocation_lat DECIMAL(12,6),
    geolocation_lng DECIMAL(12,6),
    geolocation_city VARCHAR(100),
    geolocation_state VARCHAR(50)
);




CREATE TABLE order_items_dataset(
    order_id TEXT,
    order_item_id INT,
    product_id TEXT,
    seller_id TEXT,
    shipping_limit_date TIMESTAMP,
    price DECIMAL(13,2),
    freight_value DECIMAL(13,2)

);


CREATE TABLE order_payments_dataset(
    order_id TEXT,
    payment_sequential INT,
    payment_type TEXT,
    payment_installments INT,
    payment_value DECIMAL(13,2)
);

CREATE TABLE order_reviews_dataset(
    review_id TEXT,
    order_id TEXT,
    review_score INT,
    review_comment_title VARCHAR(100),
    review_comment_message TEXT,
    review_creation_date TIMESTAMP,
    review_answer_timestamp TIMESTAMP

);

CREATE TABLE orders_dataset(
    order_id TEXT,
    customer_id TEXT,
    order_status VARCHAR(100),
    order_purchase_stamp TIMESTAMP,
    order_approved_at TIMESTAMP,
    order_delivered_carrier_date TIMESTAMP,
    order_delivered_customer_date TIMESTAMP,
    order_estimated_delivery_date TIMESTAMP
);

CREATE TABLE products_dataset(
    product_id TEXT,
    product_category_name VARCHAR(250),
    product_name_length INT,
    product_description_length INT,
    product_photos_qty INT,
    product_weight_g INT,
    product_length_cm INT,
    product_height_cm INT,
    product_width_cm INT
);

CREATE TABLE sellers_dataset(
    seller_id TEXT,
    seller_zip_code_prefix INT,
    seller_city VARCHAR(150),
    seller_state VARCHAR(50)
);

CREATE TABLE product_category_name_translation(
    product_category_name TEXT,
    product_category_name_english TEXT
);
