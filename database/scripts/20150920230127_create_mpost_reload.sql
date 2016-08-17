-- // create mpost reload
-- Migration SQL that makes the change goes here.

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[MpostReload](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[nFinProductId] [int] NULL,
	[sPinCode] [nvarchar](12) NULL,
	[sSerialNumber] [nvarchar](6) NULL,
	[nValue] [int] NULL,
	[dInsertion] [datetime] NULL,
	[bActive] [bit] NULL,
	[dUsed] [datetime] NULL,
	[bused] [bit] NULL,
	[nMpostReloadTypeId] [int] NULL,
	[bDelivered] [bit] NOT NULL,
	[dDelivered] [datetime] NULL,
UNIQUE NONCLUSTERED
(
	[sPinCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];

-- //@UNDO
-- SQL to undo the change goes here.


