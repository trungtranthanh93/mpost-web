-- // creat resseler transaction
-- Migration SQL that makes the change goes here.
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[ResellerTransaction](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nResellerId] [int] NULL,
	[nReselleropTypeId] [int] NOT NULL,
	[nCompanyId] [int] NULL,
	[nTransactionsId] [int] NULL,
	[nResellerInitialBalance] [decimal](12, 2) NOT NULL,
	[nResellerFinalBalance] [decimal](12, 2) NOT NULL,
	[nValue] [decimal](12, 2) NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[nAccessId] [int] NULL,
	[nResellerComListId] [int] NULL
CONSTRAINT [PK_ResellerTransaction] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];



-- //@UNDO
-- SQL to undo the change goes here.


