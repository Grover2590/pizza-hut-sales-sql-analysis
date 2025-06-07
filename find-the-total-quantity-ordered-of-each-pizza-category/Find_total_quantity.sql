-- join the necessary tables and find the total quantity ordered of each pizza category

 
 USE pizzahut;

SELECT 
    pizza_types.category,
    SUM(order_details.quantity) AS total_orders
FROM
    order_details
        JOIN
    pizzas ON order_details.pizza_id = pizzas.pizza_id
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizzas.pizza_type_id
GROUP BY pizza_types.category
ORDER BY total_orders DESC;
