SELECT 
    country,
    order_date,
    sum(quantity) AS total_quantity,
    sum(price) AS total_revenue
FROM {{ref('stg_order_details')}}
GROUP BY 1,2