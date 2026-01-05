/*
Query: Vendor Handling Time Analysis
Objective: Find sellers who take too long to hand over packages to the carrier.
*/

SELECT 
    s.seller_id,
    s.seller_state,
    COUNT(oi.order_id) as total_orders_sold,
    AVG(o.order_delivered_carrier_date::date - o.order_approved_at::date) as avg_days_to_ship
FROM 
    orders o
JOIN 
    order_items oi ON o.order_id = oi.order_id
JOIN 
    sellers s ON oi.seller_id = s.seller_id
WHERE 
    o.order_status = 'delivered'
GROUP BY 
    s.seller_id, s.seller_state
HAVING 
    COUNT(oi.order_id) > 50  -- Only to find active sellers with 50+ orders
ORDER BY 
    avg_days_to_ship DESC
LIMIT 10;