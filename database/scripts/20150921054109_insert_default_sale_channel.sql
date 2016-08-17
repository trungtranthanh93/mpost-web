-- // insert default sale channel
-- Migration SQL that makes the change goes here.

INSERT INTO SaleChannel([nId], sName) VALUES (1, 'MPOST Agencies');
INSERT INTO SaleChannel([nId], sName) VALUES (2, 'Self Collection');
INSERT INTO SaleChannel([nId], sName) VALUES (3, 'GAB');
INSERT INTO SaleChannel([nId], sName) VALUES (4, 'e-Commerce');
INSERT INTO SaleChannel([nId], sName) VALUES (5, 'M-Payment');
INSERT INTO SaleChannel([nId], sName) VALUES (6, 'Wholesale');

-- //@UNDO
-- SQL to undo the change goes here.


