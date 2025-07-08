-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    AVG(Num_of_pizzas_ordered) 
FROM
    (SELECT 
        orders.order_date AS Date,
            COUNT(order_details.quantity) AS Num_of_pizzas_ordered
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY orders.order_date) AS order_quantity;