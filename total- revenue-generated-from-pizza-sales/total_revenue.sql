-- Calculate the total revenue generated from pizza sales

SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price),
            2) Total_revenue
FROM
    pizzahut.order_details
        JOIN
    pizzahut.pizzas ON order_details.pizza_id = pizzas.pizza_id
    
    
    
    
    
    
    
    
    
    
    
