-- Calculate the average of orders on per day basis

SELECT 
    ROUND(AVG(quantity), 2) AS avg_order_perday
FROM
    (SELECT 
        orders.date, SUM(order_details.quantity) AS quantity
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY orders.date) AS order_quantities;
