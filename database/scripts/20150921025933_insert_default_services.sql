-- // populate default data
-- Migration SQL that makes the change goes here.

INSERT INTO Service (nId, sName, sActiveLogo, sNonActiveLogo, nPosition, bPass2Pay, nPass2PayPosition, nReprint)
VALUES (1, 'Unimob', 'unimob.png', 'unimob_d.png', 1, 1, 1, 1);

INSERT INTO Service (nId, sName, sActiveLogo, sNonActiveLogo, nPosition, bPass2Pay, nPass2PayPosition, nReprint)
VALUES (2, 'Universal', 'universal.png', 'universal_d.png', 2, 0, 0, 1);

INSERT INTO Service (nId, sName, sActiveLogo, sNonActiveLogo, nPosition, bPass2Pay, nPass2PayPosition, nReprint)
VALUES (3, 'mticket', 'mticket.png', 'mticket_d.png', 3, 1, 5, 2);

INSERT INTO Service (nId, sName, sActiveLogo, sNonActiveLogo, nPosition, bPass2Pay, nPass2PayPosition, nReprint)
VALUES (4, 'mci', 'mci.png', 'mci_d.png', 4, 1, 6, 2);

INSERT INTO Service (nId, sName, sActiveLogo, sNonActiveLogo, nPosition, bPass2Pay, nPass2PayPosition, nReprint)
VALUES (5, 'MobileMoney', 'mce.png', 'mce_d.png', 5, 1, 3, 2);

INSERT INTO Service (nId, sName, sActiveLogo, sNonActiveLogo, nPosition, bPass2Pay, nPass2PayPosition, nReprint)
VALUES (6, 'm-epay', 'mepay.png', 'mepay_d.png', 6, 1, 4, 2);

INSERT INTO Service (nId, sName, sActiveLogo, sNonActiveLogo, nPosition, bPass2Pay, nPass2PayPosition, nReprint)
VALUES (7, 'Smarty', 'smarty.png', 'smarty_d.png', 0, 0, 0, 2);

INSERT INTO Service (nId, sName, sActiveLogo, sNonActiveLogo, nPosition, bPass2Pay, nPass2PayPosition, nReprint)
VALUES (8, 'unipay', 'unipay.png', 'unipay_d.png', 7, 1, 2, 3);

INSERT INTO Service (nId, sName, sActiveLogo, sNonActiveLogo, nPosition, bPass2Pay, nPass2PayPosition, nReprint)
VALUES (1000, 'MPOST', 'mpost.png', 'mpost_d.png', 0, 0, 0, 0);

INSERT INTO Service (nId, sName, sActiveLogo, sNonActiveLogo, nPosition, bPass2Pay, nPass2PayPosition, nReprint)
VALUES (1001, 'OMS', 'oms.png', 'oms_d.png', 0, 0, 0, 5);

-- //@UNDO
-- SQL to undo the change goes here.


