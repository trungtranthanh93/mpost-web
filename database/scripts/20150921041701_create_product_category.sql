-- // create product category
-- Migration SQL that makes the change goes here.

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ProductCategory](
	[nId] [int] NOT NULL,
	[nProductId] [int] NOT NULL,
	[bActive] [bit] NOT NULL,
	[bCustomized] [bit] NOT NULL,
	[bRegular] [bit] NULL,
	[nPeriodId] [int] NULL,
	[nValue] [decimal](9, 2) NULL,
	[nValueExVat] [decimal](9, 2) NULL,
	[nVat] [decimal](5, 2) NULL,
	[sName] [nvarchar](30) NOT NULL,
	[sLogo] [nvarchar](20) NULL,
	[nCodeBar] [nvarchar](20) NULL,
	[nPosition] [nchar](2) NULL,
	[bModify] [bit] NULL,
	[nStockAlert] [int] NULL,
	[bAlert] [bit] NULL,
	[bStockManagement] [bit] NULL,
	[bPass2Pay] [bit] NULL,
	[nPass2PayPosition] [int] NULL,
	[sReprintProcess] [nvarchar](50) NULL,
	[sJob] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];

-- //@UNDO
-- SQL to undo the change goes here.


