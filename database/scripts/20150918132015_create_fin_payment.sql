-- // create fin payment
-- Migration SQL that makes the change goes here.

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[FinPayment](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nFinPaymentTypeId] [int] NOT NULL,
	[nAmount] [decimal](9, 2) NOT NULL,
	[nFinCashRefId] [int] NULL
) ON [PRIMARY];

-- //@UNDO
-- SQL to undo the change goes here.


