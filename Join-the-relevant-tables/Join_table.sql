-- Join the relevant tables to find the category wise distribution of pizza

SELECT 
    category, COUNT(name)
FROM
    pizza_types
GROUP BY category;
