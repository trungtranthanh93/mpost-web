-- // insert default reseller op type
-- Migration SQL that makes the change goes here.

INSERT INTO ResellerOptype([nId], sName) VALUES (4, 'Cancelled Transaction');
INSERT INTO ResellerOptype([nId], sName) VALUES (5, 'SubResseler Reload');
INSERT INTO ResellerOptype([nId], sName) VALUES (6, 'L2Transaction');
INSERT INTO ResellerOptype([nId], sName) VALUES (7, 'L2CancelledTransaction');
INSERT INTO ResellerOptype([nId], sName) VALUES (9, 'R2R Reload');
INSERT INTO ResellerOptype([nId], sName) VALUES (10, 'Resseler Unload');
INSERT INTO ResellerOptype([nId], sName) VALUES (1, 'Resseler reload');
INSERT INTO ResellerOptype([nId], sName) VALUES (2, 'Company reload');
INSERT INTO ResellerOptype([nId], sName) VALUES (3, 'Transaction');

-- //@UNDO
-- SQL to undo the change goes here.


