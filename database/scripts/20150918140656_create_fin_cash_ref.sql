-- // create fin cash ref
-- Migration SQL that makes the change goes here.

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[FinCashRef](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nAmount] [decimal](7, 2) NOT NULL,
	[nInsertedAmount] [decimal](7, 2) NULL,
	[nSmsId] [int] NOT NULL,
	[nAccessId] [int] NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[bActive] [bit] NOT NULL
) ON [PRIMARY];

-- //@UNDO
-- SQL to undo the change goes here.


