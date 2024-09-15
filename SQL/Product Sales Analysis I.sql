SELECT p.product_name, s.year, s.price
FROM sales as s, product as p
WHERE s.product_id = p.product_id;
