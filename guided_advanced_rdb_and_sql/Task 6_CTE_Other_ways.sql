--
-- Welcome to Task 6 !!
--
-- Advanced RDB and SQL
--
-- Common Table Expressions

USE world_peace;

WITH order_line_item_cte (new_name, new_order_id, new_description, order_qty, new_unit_price, line_subtotal ) AS

(

-- TODO -----> Paste the customer order SQL here
	SELECT
	C.customer_name,
    MI.description,
    MI.unit_price / 100 AS "unit_price_decimal",
    
	COLI.customer_order_id,
	COLI.quantity,
	COLI.quantity * MI.unit_price / 100 AS "line_total"
	FROM customer_order_line_item AS COLI, 
    customer_order AS CO, 
    customer AS C, 
    merchandise_item AS MI
	WHERE
	COLI.merchandise_item_id = MI.merchandise_item_id AND
	CO.customer_id = C.customer_id AND
	COLI.customer_order_id = CO.customer_order_id
	ORDER BY
	customer_name,
	COLI.customer_order_id,
	MI.description
)

SELECT * from order_line_item_cte;

-- TODO --

-- write a common table expression
-- call it customer_cte
-- select two columns customer_id and customer_name
-- from the table customer
-- sort by customer_name
-- run it buy select *
WITH customer_cte(customer_id, customer_name) AS
(
SELECT customer_id, customer_name 
FROM customer
ORDER BY customer_name
)
SELECT * FROM customer_cte;
