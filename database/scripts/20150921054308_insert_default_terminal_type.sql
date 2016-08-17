-- // insert default terminal type
-- Migration SQL that makes the change goes here.

INSERT INTO TerminalType([nId], sName) VALUES (1, 'Pedion');
INSERT INTO TerminalType([nId], sName) VALUES (2, 'Virtual');

-- //@UNDO
-- SQL to undo the change goes here.


