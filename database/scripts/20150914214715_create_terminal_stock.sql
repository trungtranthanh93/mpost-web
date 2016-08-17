-- // create terminalstock
-- Migration SQL that makes the change goes here.

/****** Object:  Table [dbo].[TerminalStock]    Script Date: 09/08/2015 09:23:29 ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

CREATE TABLE [dbo].[TerminalStock](
	[nId] [int] IDENTITY(1,1) NOT NULL,
	[sMacAddress] [nvarchar](20) NOT NULL,
	[sSerialNumber] [nvarchar](15) NOT NULL,
	[sSimSerialNum] [nvarchar](15) NOT NULL,
	[sCli] [nvarchar](15) NOT NULL,
	[nTelcoSupplierId] [int] NOT NULL,
	[bLinked] [bit] NOT NULL,
	[nMentorId] [int] NULL,
	[dInsertion] [datetime] NOT NULL,
	[nTerminalTypeId] [int] NULL,
 CONSTRAINT [PK_TerminalStock] PRIMARY KEY CLUSTERED
(
	[nId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY];

-- //@UNDO
-- SQL to undo the change goes here.


