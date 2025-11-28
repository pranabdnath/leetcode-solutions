-- Window function
/*SELECT customer_number
FROM (
    SELECT customer_number,
           ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS rn
    FROM Orders
    GROUP BY customer_number
) x
WHERE rn = 1;
*/

/*Using Subquery*/

SELECT customer_number
FROM Orders
GROUP BY customer_number
HAVING COUNT(*) = (
    SELECT MAX(order_count)
    FROM (
        SELECT COUNT(*) AS order_count
        FROM Orders
        GROUP BY customer_number
    ) x
);


/*EasyMethod
SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(*) DESC
LIMIT 1;
*/