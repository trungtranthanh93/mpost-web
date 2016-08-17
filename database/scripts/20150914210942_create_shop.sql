-- // creat shop
-- Migration SQL that makes the change goes here.
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Shop](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nCompanyid] [int] NOT NULL,
	[sName] [nvarchar](20) NOT NULL,
	[sAddress1] [nvarchar](50) NOT NULL,
	[sAddress2] [nvarchar](50) NULL,
	[nPostCodeId] [int] NOT NULL,
	[sTel] [nvarchar](20) NULL,
	[sFax] [nvarchar](20) NULL,
	[bActive] [bit] NOT NULL,
	[nMentorId] [int] NULL,
	[dInsertion] [datetime] NOT NULL,
	[bContractActive] [bit] NOT NULL,
	[dContractEnd] [datetime] NULL,
	[nBalance] [decimal](10, 2) NULL,
	[nContactId] [int] NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];



-- //@UNDO
-- SQL to undo the change goes here.


