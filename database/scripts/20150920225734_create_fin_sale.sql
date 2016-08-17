-- // create fin sale
-- Migration SQL that makes the change goes here.

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[FinSale](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nFinProductId] [int] NOT NULL,
	[nQuantity] [int] NOT NULL,
	[nAmount] [decimal](9, 2) NOT NULL,
	[nMpostReloadId] [int] NULL
) ON [PRIMARY];

-- //@UNDO
-- SQL to undo the change goes here.


