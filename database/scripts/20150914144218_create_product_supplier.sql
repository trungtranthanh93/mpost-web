-- // create product supplier
-- Migration SQL that makes the change goes here.

SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[ProductSupplier](
	[nId] [int] NOT NULL,
	[sName] [nvarchar](20) NOT NULL,
	[sAddress] [nvarchar](50) NULL,
	[nPostCodeId] [int] NULL,
	[sTel] [nvarchar](15) NULL,
	[sFax] [nvarchar](15) NULL,
	[sWebsite] [nvarchar](20) NULL,
	[sMapping] [nvarchar](50) NULL
CONSTRAINT [PK_ProductSupplier] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];

-- //@UNDO
-- SQL to undo the change goes here.


