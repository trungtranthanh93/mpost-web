-- // insert default doc type
-- Migration SQL that makes the change goes here.

INSERT INTO DocType([nId], sName) VALUES (5, 'Convention');
INSERT INTO DocType([nId], sName) VALUES (1, 'Contract');
INSERT INTO DocType([nId], sName) VALUES (2, 'DeliveryStatement');
INSERT INTO DocType([nId], sName) VALUES (3, 'Invoice');

-- //@UNDO
-- SQL to undo the change goes here.


