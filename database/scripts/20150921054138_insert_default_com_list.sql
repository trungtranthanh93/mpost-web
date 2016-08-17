-- // insert default com list
-- Migration SQL that makes the change goes here.

INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (1, 'Propre', 1, 2);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (2, 'Franchisé', 1, 2);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (3, 'Associé', 1, 2);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (4, 'Gold', 1, 3);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (5, 'Silver', 1, 3);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (6, 'Bronze', 1, 3);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (7, 'OLD', 0, 4);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (8, 'GAB', 1, 8);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (9, 'Propre', 1, 9);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (10, 'Wholesale', 1, 10);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (111, 'C+ OLD', 0, 11);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (71, 'WIN OLD', 0, 12);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (72, 'GNS', 1, 3);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (73, 'Cartomat', 1, 14);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (11, 'Win-Euro', 1, 2);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (17, 'MBM Standard', 1, 4);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (18, 'WIN_To_EUROSOL', 1, 12);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (19, 'WIN STANDARD', 1, 12);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (20, 'C+ STANDARD', 1, 11);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (29, 'WIN 010114', 1, 12);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (30, 'C+ 010114', 1, 11);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (27, 'MBM 010114', 1, 4);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (15, 'WIN-EURO-P', 1, 15);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (16, 'WIN-EURO-F', 1, 16);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (22, 'GNSDIRECT', 1, 17);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (23, 'ZEROCOM', 1, 17);
INSERT INTO ComList([nId], sName, bActive, nResellerId) VALUES (37, 'ZERO COM', 1, 4);

-- //@UNDO
-- SQL to undo the change goes here.


