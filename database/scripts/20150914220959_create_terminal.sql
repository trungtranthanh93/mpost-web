-- // create terminal
-- Migration SQL that makes the change goes here.

/****** Object:  Table [dbo].[Terminal]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[Terminal](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nConvention] [nvarchar](50) NULL,
	[bActiveConvention] [bit] NULL,
	[bActive] [bit] NULL,
	[nGuarantyAmount] [decimal](6, 2) NULL,
	[nShopId] [int] NULL,
	[sMacAddress] [nvarchar](20) NULL,
	[sSerialNumber] [nvarchar](15) NULL,
	[sSimSerialNum] [nvarchar](15) NULL,
	[sCli] [nvarchar](15) NULL,
	[nTelcoSupplierId] [int] NULL,
	[sLogin] [nvarchar](15) NULL,
	[sPwd] [nvarchar](15) NULL,
	[nMentorId] [int] NULL,
	[dInsertion] [datetime] NULL,
	[bModify] [bit] NULL,
	[nReloadTries] [int] NULL,
	[nDbTimeMarker] [int] NULL,
	[nOrderNumber] [int] NULL,
	[breprint] [bit] NULL,
	[nTerminalStockId] [int] NULL,
	[dConventionEnd] [datetime] NULL,
	[nVirtualCorrespondance] [int] NULL,
 CONSTRAINT [PK_Terminal] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];


-- //@UNDO
-- SQL to undo the change goes here.


