-- // creat invoice
-- Migration SQL that makes the change goes here.
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Invoice](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sInvoiceOut] [nvarchar](300) NULL,
	[nInvoiceInId] [int] NULL,
	[dInvoicePeriode] [datetime] NOT NULL
CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];



-- //@UNDO
-- SQL to undo the change goes here.


