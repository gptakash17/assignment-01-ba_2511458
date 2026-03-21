
/* A1: All customers from Mumbai along with their total order value*/

SELECT c.customer_name,
       SUM(p.unit_price * oi.quantity) AS total_order_value
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
WHERE c.customer_city = 'Mumbai'
GROUP BY c.customer_name;





-- A2:Top 3 products by total quantity sold

SELECT p.product_name,
       SUM(oi.quantity) AS total_quantity_sold
FROM Products p
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 3;




-- A3: List all sales representatives and the number of unique customers they have handled

-- Q3
SELECT sr.sales_rep_name,
	   COUNT(DISTINCT o.customer_id) AS unique_customers
FROM Sales_Reps sr
JOIN Orders o ON sr.sales_rep_id = o.sales_rep_id
GROUP BY sr.sales_rep_name;




-- A4:  All orders where the total value exceeds 10,000, sorted by value descending

SELECT 
    o.order_id,
    SUM(oi.quantity * oi.unit_price) AS total_value
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY o.order_id
HAVING total_value > 10000
ORDER BY total_value DESC;




-- A5: Any products that have never been ordered

SELECT 
    p.product_name
FROM products p
LEFT JOIN order_items oi
    ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;