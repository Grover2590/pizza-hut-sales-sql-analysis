-- Identify the highest price pizza
SELECT 
    pizza_types.name, 
    pizzas.price
FROM 
    pizzahut.pizza_types 
JOIN 
    pizzahut.pizzas 
    ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY 
    pizzas.price DESC
LIMIT 1;
