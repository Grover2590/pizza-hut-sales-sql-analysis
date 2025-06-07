-- analyze the cumulative revenue generated over time 
select date,
sum(revenue) over(order by date) as cum_revenue
FROM
(SELECT orders.date, sum(order_details.quantity*pizzas.price) AS revenue
FROM order_details
JOIN pizzas
ON order_details.pizza_id=pizzas.pizza_id
JOIN orders
on orders.order_id=order_details.order_id
group by orders.date) as sales;
