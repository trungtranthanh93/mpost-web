-- // create access
-- Migration SQL that makes the change goes here.

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Access](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sLogin] [nvarchar](100) NOT NULL,
	[sPwd] [nvarchar](100) NOT NULL,
	[nAccessTypeId] [int] NOT NULL,
	[nCompanyId] [int] NULL,
	[nUsersId] [int] NULL,
	[bActive] [bit] NULL,
	[nResellerId] [int] NULL,
	[nProductSupplierId] [int] NULL,
	[nLanguageId] [int] NULL,
	[sAppCategory] [nvarchar](10) NULL
) ON [PRIMARY];

-- //@UNDO
-- SQL to undo the change goes here.


