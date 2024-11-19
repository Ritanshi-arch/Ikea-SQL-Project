--IMPOER TO PRODUCT-parent table
--IMPORT TO STORE-parent table
--IMPORT TO INVENTORY- child table depends on product
--IMPORT TO SALES-child table depends on product and store

SELECT * FROM products; -- P
SELECT * FROM stores;-- P
SELECT * FROM sales;
SELECT * FROM inventory;

--Begin
 --DML - Update, Delete, DROP
 --DDL - Add column, Delete data, truncate, column data type change

BEGIN

ALTER TABLE sales
ADD COLUMN net_sale FLOAT;

UPDATE sales
SET net_sale = (qty * unit_price) - ((qty * unit_price) * (discount_percentage))
WHERE order_id = 'IN-897'

SELECT 
*
FROM sales
WHERE order_id = 'IN-897'


ROLLBACK



COMMIT

SELECT * FROM stores;

INSERT INTO stores(store_id, store_name, city)
VALUES
('IK-107', 'Delhi IKEA', 'Delhi'),
('IK-108', 'Gurgaon IKEA', 'Gurgaon')

-- Can you add country name to India for these two IK-107, IK-108

BEGIN


UPDATE stores
SET country = 'India'
WHERE store_id IN ('IK-107', 'IK-108');

SELECT * FROM stores
WHERE store_id IN ('IK-107', 'IK-108')



ROLLBACK

COMMIT

ALTER TABLE sales
DELETE column = 'net_sale'

drop table stores
-- 




--IDENTIFY products  that never been sold in any STORE
