-- // creat company
-- Migration SQL that makes the change goes here.

SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Company](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nContractNumber] [nvarchar](50) NULL,
	[sName] [nvarchar](30) NOT NULL,
	[sVat] [nvarchar](18) NOT NULL,
	[sAddress1] [nvarchar](60) NOT NULL,
	[sAddress2] [nvarchar](10) NULL,
	[nPostCodeId] [int] NOT NULL,
	[sLg] [nvarchar](10) NULL,
	[sWebSite] [nvarchar](15) NULL,
	[sTel] [nvarchar](15) NULL,
	[sFax] [nvarchar](15) NULL,
	[sLogin] [nvarchar](20) NULL,
	[sPwd] [nvarchar](20) NULL,
	[bActive] [bit] NOT NULL,
	[nMentorId] [int] NULL,
	[nComListId] [int] NULL,
	[nBalance] [decimal](10, 2) NULL,
	[sInvoiceType] [nvarchar](20) NULL,
	[dInsertion] [datetime] NOT NULL,
	[dLastModification] [datetime] NOT NULL,
	[nRiskValue] [decimal](10, 2) NULL,
	[bContractActive] [bit] NOT NULL,
	[dContractEnd] [datetime] NULL,
	[sBillingLevel] [nvarchar](15) NULL,
	[nResellerId] [int] NULL,
	[nSaleChannelId] [int] NULL,
	[nProductSupplierId] [int] NULL,
	[nContactId] [int] NULL,
	[nInterConnectedPlatformId] [int] NULL,
	[bInterConnected] [bit] NOT NULL,

 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];

-- //@UNDO
-- SQL to undo the change goes here.


