-- // insert default reseller comlist
-- Migration SQL that makes the change goes here.

INSERT INTO ResellerComList(nId, sName, bActive) VALUES (8, 'IWACO', '1');
INSERT INTO ResellerComList(nId, sName, bActive) VALUES (2, 'MBM/GNS', '1');
INSERT INTO ResellerComList(nId, sName, bActive) VALUES (17, 'MBM_OLD', '0');
INSERT INTO ResellerComList(nId, sName, bActive) VALUES (18, 'WINNEKH_OLD', '1');
INSERT INTO ResellerComList(nId, sName, bActive) VALUES (20, 'CASH +', '1');
INSERT INTO ResellerComList(nId, sName, bActive) VALUES (27, 'MBM_01_01_14', '1');
INSERT INTO ResellerComList(nId, sName, bActive) VALUES (28, 'WINNEKH_01_01_14', '1');
INSERT INTO ResellerComList(nId, sName, bActive) VALUES (30, 'CASH+_01_01_14', '1');

-- //@UNDO
-- SQL to undo the change goes here.


