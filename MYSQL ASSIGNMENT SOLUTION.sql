USE sql_store;

SELECT * FROM order_items;

ALTER TABLE order_items
ADD COLUMN total_price decimal(10,2) NOT NULL;

UPDATE order_items SET total_price = unit_price * quantity WHERE order_id = 6;

SELECT * FROM order_items WHERE order_id = 6 AND total_price > 30;

SELECT * FROM products;
SELECT name, quantity_in_stock FROM products WHERE quantity_in_stock = 49 OR quantity_in_stock= 38 OR quantity_in_stock= 72 ;
