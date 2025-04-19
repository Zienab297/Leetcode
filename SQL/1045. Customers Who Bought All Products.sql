SELECT c.customer_id
FROM customer AS c JOIN product as p
ON c.product_key = p.product_key
GROUP BY c.customer_id
HAVING COUNT(DISTINCT c.product_key) = (SELECT COUNT(product_key) 
                                    FROM product);
