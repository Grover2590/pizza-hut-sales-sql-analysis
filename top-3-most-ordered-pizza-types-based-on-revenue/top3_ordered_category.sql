-- Determine the top 3 most ordered pizza types based on revenue for each pizza category 
USE pizzahut;
SELECT name, revenue
FROM
(SELECT category,name,revenue,
rank() over(partition by category order by revenue desc) as rn
FROM
(SELECT 
    pizza_types.category,
    pizza_types.name,
    SUM(order_details.quantity * pizzas.price) as revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
    join order_details
    ON order_details.pizza_id=pizzas.pizza_id
GROUP BY pizza_types.category , pizza_types.name) as a) as b
WHERE rn<=3;
