SELECT 
	orders.order_date AS order_date,
	order_details.quantity AS quantity,
    order_details.price AS price,
	brands.name AS brand_name,
	products.name AS product_name,
    orders.customer_phone AS customer_phone,
    {{ normalize_phone_number('customer_phone') }} AS normalized_phone,
    {{ country(normalize_phone_number('customer_phone')) }} as country
FROM 
    {{ source('store', 'orders') }} AS orders 
LEFT JOIN 
    {{source('store', 'order_details')}}  AS order_details
ON 
     orders.order_id = order_details.order_id
LEFT JOIN 
    {{source('store', 'products')}}  AS products 
ON 
    order_details.product_id = products.product_id 
LEFT JOIN 
    {{source('store', 'brands')}}  AS brands
ON 
    products.brand_id = brands.brand_id 
