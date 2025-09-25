-- World Peace Gifts decided to have a seasonal sale to clear some of the merchandise in the inventory. Write a stored procedure to calculate a discount price that’s 20% off the original price.

-- Hints:

-- 1. Use what you have done in the previous tasks as a guide. Copy and paste some of the code if you’d like.
-- 2. Call your procedure stp_discount20.
-- 3. You will need two parameters, request_item_id for the merchandise ID and discounted_price as a return parameter.
-- 4. Your SQL statement will select the price from the table merchandise_item using the request_item_id.
-- 5. Test your procedure just like we did before with a local variable @discounted_price.


USE world_peace;
DROP PROCEDURE IF EXISTS stp_discount20;
DELIMITER $$
CREATE PROCEDURE stp_discount20(
		IN request_item_id CHAR(10), 
        OUT discounted_price INT)

	BEGIN
		SELECT unit_price * 0.8 
        INTO discounted_price
        FROM merchandise_item
        WHERE request_item_id = merchandise_item_id;
    END$$
    
DELIMITER ;

SET @discounted_price = 0;
CALL stp_discount20("ITALYPASTA", @discounted_price);
SELECT @discounted_price;
