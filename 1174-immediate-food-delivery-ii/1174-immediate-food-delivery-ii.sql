# Write your MySQL query statement below
-- Last question of SQL 50 — FINALLY!

SELECT 
    COALESCE(
        ROUND(
            AVG(CASE 
                    WHEN d.order_date = d.customer_pref_delivery_date THEN 1 
                    ELSE 0 
                END) * 100
        , 2)
    , 0.00) AS immediate_percentage
FROM delivery AS d
JOIN (
    SELECT 
        customer_id, 
        MIN(order_date) AS first_order_date
    FROM delivery
    GROUP BY customer_id
) AS first_orders
    ON d.customer_id = first_orders.customer_id
    AND d.order_date = first_orders.first_order_date;