-- // create sms
-- Migration SQL that makes the change goes here.

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[SMS](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sSmsId] [nvarchar](50) NULL,
	[sSender] [nvarchar](50) NULL,
	[sMsg] [nvarchar](300) NULL,
	[sProvider] [nvarchar](50) NULL,
	[dInsertion] [datetime] NOT NULL,
	[nSmsTypeId] [int] NULL,
	[sOutBoundId] [nvarchar](50) NULL,
	[bReceip] [bit] NULL,
	[dReceipt] [datetime] NULL
) ON [PRIMARY];

-- //@UNDO
-- SQL to undo the change goes here.


