-- // create fin op
-- Migration SQL that makes the change goes here.

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[FinOp](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nFinOperationTypeId] [int] NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[dOperation] [datetime] NOT NULL,
	[nCompanyId] [int] NOT NULL,
	[nFinSaleId] [int] NULL,
	[nFinPaymentId] [int] NULL,
	[nBalance] [decimal](9, 2) NOT NULL,
	[sComment] [nvarchar](1000) NULL,
	[bActive] [bit] NULL,
	[nMentorId] [int] NULL,
	[nFinOpTypeId] [int] NULL,
	[nOperationSourceId] [int] NULL,
	[nSmsId] [int] NULL
) ON [PRIMARY];

-- //@UNDO
-- SQL to undo the change goes here.


