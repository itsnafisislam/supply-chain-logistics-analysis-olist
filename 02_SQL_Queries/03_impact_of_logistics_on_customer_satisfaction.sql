/* Query: Impact of Logistics on Customer Satisfaction
Objective: Quantify how much late deliveries hurt our review scores. */

SELECT 
    CASE 
        WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date THEN 'Late Delivery'
        ELSE 'On-Time Delivery'
    END as delivery_status,
    COUNT(r.review_id) as total_reviews,
    AVG(r.review_score) as avg_review_score
FROM 
    orders o
JOIN 
    reviews r ON o.order_id = r.order_id
WHERE 
    o.order_status = 'delivered'
GROUP BY 
    1;