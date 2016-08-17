-- // creat Documents
-- Migration SQL that makes the change goes here.
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Documents](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](100) NOT NULL,
	[nDocTypeId] [int] NOT NULL,
	[dInsertion] [datetime] NOT NULL,
	[nCompanyId] [int] NULL,
	[nTerminalId] [int] NULL,
	[nInvoiceId] [int] NULL
CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];



-- //@UNDO
-- SQL to undo the change goes here.


