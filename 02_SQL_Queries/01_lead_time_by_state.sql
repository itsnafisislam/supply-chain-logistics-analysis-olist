-- Query: Average Shipping Delay by State
-- Objective: Identify which regions have the slowest logistics.

SELECT 
    c.customer_state,
    COUNT(o.order_id) as total_orders,
    AVG(o.order_delivered_customer_date::date - o.order_purchase_timestamp::date) as avg_lead_time_days,
    AVG(o.order_delivered_customer_date::date - o.order_estimated_delivery_date::date) as avg_delay_days
FROM 
    orders o
JOIN 
    customers c ON o.customer_id = c.customer_id
WHERE 
    o.order_status = 'delivered'
GROUP BY 
    c.customer_state
ORDER BY 
    avg_lead_time_days DESC;